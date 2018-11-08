module colorful_breath_led_pro(clk, key, led, digit_seg, digit_cath, swx, swy, real_rst, R_N5, G_R3, B_R4, R_T5, G_T6, B_T4);
 
input clk;
input key;
output [7:0]led;
output [7:0]digit_seg;
output [1:0]digit_cath;
input [3:0]swx;
input [3:0]swy;
input real_rst;
output R_N5;
output G_R3;
output B_R4;
output R_T5;
output G_T6;
output B_T4;
reg [3:0]swx_temp;
reg [3:0]swy_temp;
wire key_pulse;
reg [1:0] pulse_count=0;
always @(posedge clk) begin
	swx_temp=swx;
	swy_temp=swy;
end
debounce u4(
	.clk(clk),
	.rst(rst),
	.key(key),
	.key_pulse(key_pulse));
always@(posedge key_pulse or posedge rst) begin
    if(rst)
    pulse_count<=0;
    else if (key_pulse)begin
        pulse_count<=pulse_count+1;
    end
    else begin
        pulse_count<=pulse_count;
    end

end
wire R_N5_tmp;
wire G_R3_tmp;
wire B_R4_tmp;

wire R_T5_tmp;
wire G_T6_tmp;
wire B_T4_tmp;

assign R_N5 = pulse_count[0] | R_N5_tmp ;
assign G_R3 = pulse_count[0] | G_R3_tmp ;
assign B_R4 = pulse_count[0] | B_R4_tmp ;

assign R_T5 = pulse_count[1] | R_T5_tmp ;
assign G_T6 = pulse_count[1] | G_T6_tmp ;
assign B_T4 = pulse_count[1] | B_T4_tmp ;
breath_led u1(
	.clk(clk),
	.freq(swy),
	.real_rst(real_rst),
	.R_N5(R_N5_tmp),
	.G_R3(G_R3_tmp),
	.B_R4(B_R4_tmp));
breath_led u2(
	.clk(clk),
	.freq(swx),
	.real_rst(real_rst),
	.R_N5(R_T5_tmp),
	.G_R3(G_T6_tmp),
	.B_R4(B_T4_tmp)
	);
breath_led_and_led_test u3(
	.sw({swy,swx}),
	.clk(clk),
	.real_rst(real_rst),
	.led(led),
	.digit_seg(digit_seg),
	.digit_cath(digit_cath));

endmodule

module breath_led(clk, freq, real_rst, R_N5, G_R3, B_R4);
 
	input clk;             //系统时钟输入
	input  [3:0] freq;
	input  real_rst;             //复位输出
	output R_N5;            //led输出
	output G_R3;
	output B_R4;
   wire rst;
	assign rst=~real_rst;
	reg [24:0] cnt1;       //计数器1
	reg [24:0] cnt2;       //计数器2
	reg flag;              //呼吸灯变亮和变暗的标志位
 
//	parameter  CNT_NUM=10000;	//计数器的最大值 period = (2400^2)*2 = 24000000 = 2s
	reg [24:0]CNT_NUM=10000;
always @(posedge clk) begin
	if (freq == 0) begin
		CNT_NUM=1000;
	end
	else begin
		CNT_NUM=1000*freq;
	end
end
	always@(posedge clk or negedge rst) begin 
		if(!rst) begin
			cnt1<=13'd0;
			end 
                else begin
		     if(cnt1>=CNT_NUM-1) 
                        cnt1<=1'b0;
		     else 
                        cnt1<=cnt1+1'b1; 
                    end
		end
 	

 	reg [2:0]control = 3'b110;
reg pre_flag;
reg pre_pre_flag;
always @(posedge clk) begin
	pre_flag<=flag;
	pre_pre_flag<=pre_flag;
	if (pre_flag==~pre_pre_flag) begin
			if (control == 3'b110) begin
			control = 3'b101;
			
		end
		else if (control == 3'b101) begin
			control = 3'b011;
		end
		else if (control == 3'b011) begin
			control = 3'b110;
		end
		else begin
			control = control;
		end
	end
	else begin
		control = control;
	end
end
	//产生计数器cnt2
	always@(posedge clk or negedge rst) begin 
		if(!rst) 
			begin
			cnt2<=13'd0;
			flag<=1'b0;
			end 
      else
			begin
		   if(cnt1>=CNT_NUM-1) 
				begin              //当计数器1计满时计数器2开始计数加一或减一
			   	if(!flag) 
					begin                     //当标志位为0时计数器2递增计数，表示呼吸灯效果由暗变亮
				   	if(cnt2>=CNT_NUM-1)         //计数器2计满时，表示亮度已最大，标志位变高，之后计数器2开始递减
                                    flag<=1'b1;
					else
                                    cnt2<=cnt2+1'b1;
				   	end 
			   	else 
				begin                     //当标志位为高时计数器2递减计数
				if(cnt2<=0)                //计数器2级到0，表示亮度已最小，标志位变低，之后计数器2开始递增
                                    flag<=1'b0;
				else 
                                    cnt2<=cnt2-1'b1;
				end
				end
            else cnt2<=cnt2;              //计数器1在计数过程中计数器2保持不变
			end
			end
 wire [24:0]cnt3;
 assign cnt3=(flag==1)?CNT_NUM-cnt2:cnt2;
	//比较计数器1和计数器2的值产生自动调整占空比输出的信号，输出到led产生呼吸灯效果
	assign  R_N5 = ((cnt1<cnt3)? control[0] : control[1]);
	assign  G_R3 = ((cnt1<cnt3)? control[1] : control[2]);
	assign  B_R4 = ((cnt1<cnt3)? control[2] : control[0]);



endmodule

module breath_led_and_led_test(sw,clk,real_rst,led,digit_seg,digit_cath);

   input [7:0] sw;

	input clk;             //系统时钟输入

	input real_rst;             //复位输出

	output [7:0] led;            //led输出

   output [7:0] digit_seg; //七段数码管的段选端

   output [1:0] digit_cath; //2个数码管的片选端

   wire rst;

	assign rst=~real_rst;

	reg [24:0] cnt1;       //计数器1

	reg [24:0] cnt2;       //计数器2

	reg flag;              //呼吸灯变亮和变暗的标志位

 

	parameter   CNT_NUM = 10000;	//计数器的最大值 period = (2400^2)*2 = 24000000 = 2s

	//产生计数器cnt1

	seg_scan u2(.clk_50M(clk),.rst_button(real_rst), .switch(sw), .digit_seg(digit_seg), .digit_cath(digit_cath));

	

	always@(posedge clk or negedge rst) begin 

		if(!rst) begin

			cnt1<=13'd0;

			end 

                else begin

		     if(cnt1>=CNT_NUM-1) 

                        cnt1<=1'b0;

		     else 

                        cnt1<=cnt1+1'b1; 

                    end

		end

 

	//产生计数器cnt2

	always@(posedge clk or negedge rst) begin 

		if(!rst) 

			begin

					cnt2<=13'd0;

					flag<=1'b0;

			end 

        else

			begin

		    if(cnt1==CNT_NUM-1) 

				begin              //当计数器1计满时计数器2开始计数加一或减一

			    if(!flag) 

					begin                     //当标志位为0时计数器2递增计数，表示呼吸灯效果由暗变亮

				    if(cnt2>=CNT_NUM-1)         //计数器2计满时，表示亮度已最大，标志位变高，之后计数器2开始递减

                                    flag<=1'b1;

					else

                                    cnt2<=cnt2+1'b1;

				    end 

			    else 

				begin                     //当标志位为高时计数器2递减计数

				if(cnt2<=0)                //计数器2级到0，表示亮度已最小，标志位变低，之后计数器2开始递增

                                    flag<=1'b0;

				else 

                                    cnt2<=cnt2-1'b1;

			    end

			    end

                            else cnt2<=cnt2;              //计数器1在计数过程中计数器2保持不变

			end

			end

 

	//比较计数器1和计数器2的值产生自动调整占空比输出的信号，输出到led产生呼吸灯效果

	assign	led[0] = ((cnt1<cnt2)?1'b0:1'b1)&sw[0];

	assign	led[1] = ((cnt1<cnt2)?1'b0:1'b1)&sw[1];

	assign	led[2] = ((cnt1<cnt2)?1'b0:1'b1)&sw[2];

	assign	led[3] = ((cnt1<cnt2)?1'b0:1'b1)&sw[3];

	assign	led[4] = ((cnt1<cnt2)?1'b0:1'b1)&sw[4];

	assign	led[5] = ((cnt1<cnt2)?1'b0:1'b1)&sw[5];

	assign	led[6] = ((cnt1<cnt2)?1'b0:1'b1)&sw[6];

	assign	led[7] = ((cnt1<cnt2)?1'b0:1'b1)&sw[7];

 

endmodule



module seg_scan(clk_50M,rst_button, switch, digit_seg, digit_cath);

input clk_50M; //板载50M晶振

input rst_button;

input [7:0] switch;

output reg [7:0] digit_seg; //七段数码管的段选端

output [1:0] digit_cath; //2个数码管的片选端

wire reset; //复位按键

assign reset = rst_button;



//计数分频，通过读取32位计数器div_count不同位数的上升沿或下降沿来获得频率不同的时钟

reg [31:0] div_count;

always @(posedge clk_50M,posedge reset)

begin

    if(reset)

        div_count <= 0;   //如果按下复位按键，计数清零

    else

        div_count <= div_count + 1;

end



//拨码开关控制数码管显示，每4位拨码开关控制一个七段数码管

wire [7:0] digit_display;

assign digit_display = switch;



wire [3:0] digit;

always @(*)      //对所有信号敏感

begin

    case (digit)

        4'h0:  digit_seg <= 8'b11111100; //显示0~F

        4'h1:  digit_seg <= 8'b01100000;   

        4'h2:  digit_seg <= 8'b11011010;

        4'h3:  digit_seg <= 8'b11110010;

        4'h4:  digit_seg <= 8'b01100110;

        4'h5:  digit_seg <= 8'b10110110;

        4'h6:  digit_seg <= 8'b10111110;

        4'h7:  digit_seg <= 8'b11100000;

        4'h8:  digit_seg <= 8'b11111110;

        4'h9:  digit_seg <= 8'b11110110;

        4'hA:  digit_seg <= 8'b11101110;

        4'hB:  digit_seg <= 8'b00111110;

        4'hC:  digit_seg <= 8'b10011100;

        4'hD:  digit_seg <= 8'b01111010;

        4'hE:  digit_seg <= 8'b10011110;

        4'hF:  digit_seg <= 8'b10001110;

    endcase

end



//通过读取32位计数器的第10位的上升沿得到分频时钟，用于数码管的扫描

reg segcath_holdtime;

always @(posedge div_count[10], posedge reset)

begin

if(reset)

     segcath_holdtime <= 0;

else

     segcath_holdtime <= ~segcath_holdtime;

end



//7段数码管位选控制

assign digit_cath ={segcath_holdtime, ~segcath_holdtime};

// 相应位数码管段选信号控制

assign digit =segcath_holdtime ? digit_display[7:4] : digit_display[3:0];



endmodule

module debounce (clk,rst,key,key_pulse);
 
        parameter       N  =  1;                      //要消除的按键的数量
 
    input             clk;
        input             rst;
        input   [N-1:0]   key;                        //输入的按键                   
    output  [N-1:0]   key_pulse;                  //按键动作产生的脉冲   
 
        reg     [N-1:0]   key_rst_pre;                //定义一个寄存器型变量存储上一个触发时的按键值
        reg     [N-1:0]   key_rst;                    //定义一个寄存器变量储存储当前时刻触发的按键值
 
        wire    [N-1:0]   key_edge;                   //检测到按键由高到低变化是产生一个高脉冲
 
        //利用非阻塞赋值特点，将两个时钟触发时按键状态存储在两个寄存器变量中
        always @(posedge clk  or  posedge rst)
          begin
             if (rst) begin
                 key_rst <= {N{1'b1}};                //初始化时给key_rst赋值全为1，{}中表示N个1
                 key_rst_pre <= {N{1'b1}};
             end
             else begin
                 key_rst <= key;                     //第一个时钟上升沿触发之后key的值赋给key_rst,同时key_rst的值赋给key_rst_pre
                 key_rst_pre <= key_rst;             //非阻塞赋值。相当于经过两个时钟触发，key_rst存储的是当前时刻key的值，key_rst_pre存储的是前一个时钟的key的值
             end    
           end
 
        assign  key_edge = key_rst_pre & (~key_rst);//脉冲边沿检测。当key检测到下降沿时，key_edge产生一个时钟周期的高电平
 
        reg [17:0]    cnt;                       //产生延时所用的计数器，系统时钟12MHz，要延时20ms左右时间，至少需要18位计数器     
 
        //产生20ms延时，当检测到key_edge有效是计数器清零开始计数
        always @(posedge clk or posedge rst)
           begin
             if(rst)
                cnt <= 18'h0;
             else if(key_edge)
                cnt <= 18'h0;
             else
                cnt <= cnt + 1'h1;
             end  
 
        reg     [N-1:0]   key_sec_pre;                //延时后检测电平寄存器变量
        reg     [N-1:0]   key_sec;                    
 
 
        //延时后检测key，如果按键状态变低产生一个时钟的高脉冲。如果按键状态是高的话说明按键无效
        always @(posedge clk  or  posedge rst)
          begin
             if (rst) 
                 key_sec <= {N{1'b1}};                
             else if (cnt==18'h3ffff)
                 key_sec <= key;  
          end
       always @(posedge clk  or  posedge rst)
          begin
             if (rst)
                 key_sec_pre <= {N{1'b1}};
             else                   
                 key_sec_pre <= key_sec;             
         end      
       assign  key_pulse = key_sec_pre & (~key_sec);     
 
endmodule