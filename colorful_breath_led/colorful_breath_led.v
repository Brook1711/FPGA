module colorful_breath_led(clk, real_rst, R_N5, G_R3, B_R4);
 
input clk;
input real_rst;
output R_N5;
output G_R3;
output B_R4;
breath_led u1(
	.clk(clk),
	.real_rst(real_rst),
	.R_N5(R_N5),
	.G_R3(G_R3),
	.B_R4(B_R4));
endmodule

module breath_led(clk, real_rst, R_N5, G_R3, B_R4);
 
	input clk;             //系统时钟输入
	input real_rst;             //复位输出
	output R_N5;            //led输出
	output G_R3;
	output B_R4;
   wire rst;
	assign rst=~real_rst;
	reg [24:0] cnt1;       //计数器1
	reg [24:0] cnt2;       //计数器2
	reg flag;              //呼吸灯变亮和变暗的标志位
 
	parameter   CNT_NUM = 10000;	//计数器的最大值 period = (2400^2)*2 = 24000000 = 2s
	//产生计数器cnt1
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
 wire [24:0]cnt3;
 assign cnt3=(flag==1)?CNT_NUM-cnt2:cnt2;
	//比较计数器1和计数器2的值产生自动调整占空比输出的信号，输出到led产生呼吸灯效果
	assign  R_N5 = ((cnt1<cnt3)? control[0] : control[1]);
	assign  G_R3 = ((cnt1<cnt3)? control[1] : control[2]);
	assign  B_R4 = ((cnt1<cnt3)? control[2] : control[0]);



endmodule