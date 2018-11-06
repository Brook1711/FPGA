module four_bit_full_adder(buttun, rst, clk, swx, swy, digit_seg ,digit_cath , little_led, LED_N5_R, LED_T6_G);
input buttun;
input rst;
input clk;
input [3:0] swx;
input [3:0] swy;
output reg [7:0] digit_seg; //七段数码管的段选端
output [1:0] digit_cath; //2个数码管的片选端
output [7:0] little_led;
output LED_N5_R;
output LED_T6_G;
wire [4:0] temp_full_result;
wire key_pulse;
reg view_chose=1;
wire [7:0] digit_display;

         debounce  u1 (                               
                       .clk (clk),
                       .rst (rst),
                       .key (~buttun),
                       .key_pulse (key_pulse)
                       );


always @(posedge clk or posedge rst) begin
	if (rst) begin
		view_chose<=1;
		
	end
	else if (key_pulse) begin
		view_chose<=~view_chose;
	end
	else begin
		view_chose<=view_chose;
	end
end
full_add add(
	.x(swx),
	.y(swy),
	.sum(temp_full_result));






reg [31:0] div_count;
always @(posedge clk,posedge rst)
begin
    if(rst)
        div_count <= 0;   //如果按下复位按键，计数清零
    else
        div_count <= div_count + 1;
end

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
reg segcath_holdtime;
always @(posedge div_count[10], posedge rst)
begin
if(rst)
     segcath_holdtime <= 0;
else
     segcath_holdtime <= ~segcath_holdtime;
end

//7段数码管位选控制
assign digit_cath ={segcath_holdtime, ~segcath_holdtime};
// 相应位数码管段选信号控制
assign digit =segcath_holdtime ? digit_display[7:4] : digit_display[3:0];

assign {LED_N5_R,LED_T6_G} =view_chose==1?2'b10:2'b01;
assign little_led = view_chose==1?{swy,swx}:{{3{1'b0}},temp_full_result};
assign digit_display =  view_chose==1?{swy,swx}:{{3{1'b0}},temp_full_result};
endmodule

module full_add(x,y,sum);
parameter N=3;
input [N:0] x;
input [N:0] y;
output [N+1:0] sum;
wire co0,co1,co2,co3;
wire co=0;
add_N a0(
	.x(x[0]),
	.y(y[0]),
	.Cin(co),
	.Cout(co0),
	.Sum(sum[0])
	);
add_N a1(
	.x(x[1]),
	.y(y[1]),
	.Cin(co0),
	.Cout(co1),
	.Sum(sum[1])
	);
add_N a2(
	.x(x[2]),
	.y(y[2]),
	.Cin(co1),
	.Cout(co2),
	.Sum(sum[2])
	);
add_N a3(
	.x(x[3]),
	.y(y[3]),
	.Cin(co2),
	.Cout(co3),
	.Sum(sum[3])
	);
assign sum[4] = co3;

endmodule

module add_N(x,y,Cin,Cout,Sum);
parameter N=0;
  input [N:0]x,y;
  input Cin;
  output [N:0]Sum;
  output  Cout;
  assign  {Cout,Sum}=x+y+Cin;
endmodule

module debounce (clk,rst,key,key_pulse);
 
        parameter       N  =  1;                      //要消除的按键的数量
 
	input             clk;
        input             rst;
        input 	[N-1:0]   key;                        //输入的按键					
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
 
        reg	[17:0]	  cnt;                       //产生延时所用的计数器，系统时钟12MHz，要延时20ms左右时间，至少需要18位计数器     
 
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