module bell(clk, rst, bell_code, frequncy_bell);
input clk;//50M
input rst;//复位键
input [2:0] bell_code;
output reg frequncy_bell; //响铃输出
wire [6:0] frequncy_bell_temp;//七个音符
frequency_divider #(.N(23889)) bell_clk_1(//1046.5Hz 高音1
	.clkin(clk),
	.clkout(frequncy_bell_temp[0])
	);
frequency_divider #(.N(21282)) bell_clk_2(//1174.7Hz 高音2
	.clkin(clk),
	.clkout(frequncy_bell_temp[1])
	);
frequency_divider #(.N(18961)) bell_clk_3(//1318.5Hz 高音3
	.clkin(clk),
	.clkout(frequncy_bell_temp[2])
	);
frequency_divider #(.N(17897)) bell_clk_4(//1396.9Hz 高音4
	.clkin(clk),
	.clkout(frequncy_bell_temp[3])
	);
frequency_divider #(.N(15944)) bell_clk_5(//1568Hz 高音5
	.clkin(clk),
	.clkout(frequncy_bell_temp[4])
	);
frequency_divider #(.N(14205)) bell_clk_6(//1760Hz 高音6
	.clkin(clk),
	.clkout(frequncy_bell_temp[5])
	);
frequency_divider #(.N(12655)) bell_clk_7(//1975.5Hz 高音7
	.clkin(clk),
	.clkout(frequncy_bell_temp[6])
	);
always @(posedge clk or posedge rst) begin
	case(bell_code)
	1:begin
		frequncy_bell<=frequncy_bell_temp[0];
	end
	2:begin
		frequncy_bell<=frequncy_bell_temp[1];
	end
	3:begin
		frequncy_bell<=frequncy_bell_temp[2];
	end
	4:begin
		frequncy_bell<=frequncy_bell_temp[3];
	end
	5:begin
		frequncy_bell<=frequncy_bell_temp[4];
	end
	6:begin
		frequncy_bell<=frequncy_bell_temp[5];
	end
	7:begin
		frequncy_bell<=frequncy_bell_temp[6];
	end
	0:begin
		frequncy_bell<=0;
	end
	default:begin
		frequncy_bell<=frequncy_bell_temp[0];
	end
	endcase
end
/*
always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		delay<=0;
		flag<=0;
	end
	else if (delay<=25000000 & flag==1) begin
		delay<=delay+1;
	end
	else if (bell_BTN) begin
		flag<=1;
	end
	else begin
		flag<=0;
	end
end
*/
endmodule

module sequencer_bell(clk, BTN, bell_code);
input clk;
input [7:0] BTN;
output reg [2:0] bell_code;
always @(posedge clk) begin
	case(BTN)
	8'b0000_0001:begin
		bell_code<=1;
	end
	8'b0000_0010:begin
		bell_code<=2;
	end
	8'b0000_0100:begin
		bell_code<=3;
	end
	8'b0000_1000:begin
		bell_code<=4;
	end
	8'b0001_0000:begin
		bell_code<=5;
	end
	8'b0010_0000:begin
		bell_code<=6;
	end
	8'b0100_0000:begin
		bell_code<=7;
	end
	default:begin
		bell_code<=0;
	end
endmodule

module frequency_divider(clkin, clkout);
parameter N = 1;
input clkin;
output reg clkout;
reg [27:0] cnt;
initial 
begin
cnt=0;
clkout=0;
end
always @(posedge clkin) begin
	if (cnt==N) begin
		clkout <= !clkout;
		cnt <= 0;
	end
	else begin
		cnt <= cnt + 1;
	end
end
endmodule
