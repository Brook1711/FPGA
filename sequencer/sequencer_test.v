module sequencer_test(clk, rst, code);
input clk;
input rst;
output [27:0] code;
wire [6:0] clk_six;
frequency_divider #(.N(12500000)) u_clk_6(
	.clkin(clk),
	.clkout(clk_six[6])
	);
frequency_divider #(.N(10000000)) u_clk_5(
	.clkin(clk),
	.clkout(clk_six[5])
	);
frequency_divider #(.N(7500000)) u_clk_4(
	.clkin(clk),
	.clkout(clk_six[4])
	);
frequency_divider #(.N(5000000)) u_clk_3(
	.clkin(clk),
	.clkout(clk_six[3])
	);
frequency_divider #(.N(2500000)) u_clk_2(
	.clkin(clk),
	.clkout(clk_six[2])
	);
frequency_divider #(.N(2000000)) u_clk_1(
	.clkin(clk),
	.clkout(clk_six[1])
	);
frequency_divider #(.N(1250000)) u_clk_0(
	.clkin(clk),
	.clkout(clk_six[0])
	);
sequencer_chi u_sequencer_chi(
	.clk(clk_six[6]),
	.rst(rst),
	.flag(1),
	.code(code[27:24])
	);
sequencer_eng u_sequencer_eng(
	.clk(clk_six[5]),
	.rst(rst),
	.flag(1),
	.code(code[23:20])
	);
sequencer_num u_sequencer_num_4(
	.clk(clk_six[4]),
	.rst(rst),
	.flag(1),
	.code(code[19:16])
	);
sequencer_num u_sequencer_num_3(
	.clk(clk_six[3]),
	.rst(rst),
	.flag(1),
	.code(code[15:12])
	);
sequencer_num u_sequencer_num_2(
	.clk(clk_six[2]),
	.rst(rst),
	.flag(1),
	.code(code[11:8])
	);
sequencer_num u_sequencer_num_1(
	.clk(clk_six[1]),
	.rst(rst),
	.flag(1),
	.code(code[7:4])
	);
sequencer_num u_sequencer_num_0(
	.clk(clk_six[0]),
	.rst(rst),
	.flag(1),
	.code(code[3:0])
	);
endmodule

module sequencer_eng(clk, rst, flag, code);
input clk;
input rst;
input flag;
output reg [3:0] code;
always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		code<=4'ha;
	end
	else if (flag==1) begin
		if (code==4'hf) begin
			code<=4'ha;
		end
		else begin
			code<=code+1;
		end
	end
	else begin
		code<=code;
	end
	
end
endmodule

module sequencer_num(clk, rst, flag, code);
input clk;
input rst;
input flag;
output reg [3:0] code;
always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		code<=0;
	end
	else if (flag==1) begin
		if (code==4'h9) begin
			code<=0;
		end
		else begin
			code<=code+1;
		end
	end
	else begin
		code<=code;
	end
	
end
endmodule

module sequencer_chi(clk, rst, flag, code);
input clk;
input rst;
input flag;
output reg [3:0] code;
always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		code<=0;
	end
	else if (flag==1) begin
		if (code==4'h4) begin
			code<=0;
		end
		else begin
			code<=code+1;
		end
	end
	else begin
		code<=code;
	end
	
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