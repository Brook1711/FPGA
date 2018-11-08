module decoder_3_8(clk, rst, sw,S,led);
   input clk;
   input rst;
	input [2:0] sw;
	input [2:0] S;  //The subscript is 0 corresponding to A.
	output wire [7:0] led;

	reg [7:0] tmp_led2;

breath_led u1(
	.clk(clk),
	.sw(tmp_led2),
	.real_rst(rst),
	.led(led));

always @(sw or S) begin
	if (S == 3'b111) begin
		case(sw)
			3'b000:tmp_led2=8'b1111_1110;
			3'b001:tmp_led2=8'b1111_1101;
			3'b010:tmp_led2=8'b1111_1011;
			3'b011:tmp_led2=8'b1111_0111;
			3'b100:tmp_led2=8'b1110_1111;
			3'b101:tmp_led2=8'b1101_1111;
			3'b110:tmp_led2=8'b1011_1111;
			3'b111:tmp_led2=8'b0111_1111;
		default: ;
		endcase
	end
	else begin
		tmp_led2=8'b1111_1111;
	end
end
endmodule

module breath_led(clk, sw, real_rst, led);
 
	input clk;             //系统时钟输入
	input [7:0] sw;
	input real_rst;             //复位输出
	output [7:0]led;            //led输出
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
	assign  led[0] = ((cnt1<cnt2)?1'b0:1'b1)&sw[0];
    assign  led[1] = ((cnt1<cnt2)?1'b0:1'b1)&sw[1];
    assign  led[2] = ((cnt1<cnt2)?1'b0:1'b1)&sw[2];
    assign  led[3] = ((cnt1<cnt2)?1'b0:1'b1)&sw[3];
    assign  led[4] = ((cnt1<cnt2)?1'b0:1'b1)&sw[4];
    assign  led[5] = ((cnt1<cnt2)?1'b0:1'b1)&sw[5];
    assign  led[6] = ((cnt1<cnt2)?1'b0:1'b1)&sw[6];
    assign  led[7] = ((cnt1<cnt2)?1'b0:1'b1)&sw[7];
 
endmodule