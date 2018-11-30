module decode_lattice_test(clk, rst , row, col);
input clk;
input rst;
output [7:0] row;
output [7:0] col;

reg [2:0] code;



wire clk_2;

frequency_divider
	#(.N(12500000))//H=2;T=0.5s
	u_clk_6
	(
	.clkin(clk),
	.clkout(clk_2)
	);


always @(posedge clk_2 or posedge rst) begin
	if (rst) begin
		// reset
		code<=0;
	end
	else if (code==4) begin
		code<=1'b0;
	end
	else begin
		code <= code + 1'b1;
	end
end


decode_lattice u1(
.clk(clk),
.rst(rst),
.code(code),
.row(row),
.col(col));

endmodule

module decode_lattice(clk, rst, code, row, col);
input clk;//50M
input rst;
input [3:0] code;
output reg [7:0] row;
output reg [7:0] col;

wire clk_500k;

frequency_divider
	#(.N(50000))
	u1 
	(
	.clkin(clk),
	.clkout(clk_500k)
	);


reg [63:0] col_temp;

reg [2:0] cnt;
always @(posedge clk_500k) begin
	if (rst) begin
		// reset
		cnt<=0;
	end
	else  begin
		cnt<=cnt+1;
	end
end

always @(posedge clk_500k) begin
	case(cnt)
	3'h0: begin
		row<=8'b1111_1110;
		col<=col_temp[7:0];
	end
	3'h1: begin
		row<=8'b1111_1101;
		col<=col_temp[15:8];
	end
	3'h2: begin
		row<=8'b1111_1011;
		col<=col_temp[23:16];
	end
	3'h3: begin
		row<=8'b1111_0111;
		col<=col_temp[31:24];
	end
	3'h4: begin
		row<=8'b1110_1111;
		col<=col_temp[39:32];
	end
	3'h5: begin
		row<=8'b1101_1111;
		col<=col_temp[47:40];
	end
	3'h6: begin
		row<=8'b1011_1111;
		col<=col_temp[55:48];
	end
	3'h7: begin
		row<=8'b0111_1111;
		col<=col_temp[63:56];
	end
	default:;
	endcase
end


always @(posedge clk_500k) begin
	case(code)
        4'h0:  col_temp <= 64'b00010000_11111111_01111110_01000010_01111110_01010100_11010010_10110000;
        4'h1:  col_temp <= 64'b11000100_01011111_10010001_00011111_01010001_01010000_10100000_10100000;   
        4'h2:  col_temp <= 64'b00011000_11111111_00011000_01111110_00000000_01111110_01000010_01111110;
        4'h3:  col_temp <= 64'b00100100_11111111_00010000_11111100_01010110_10100101_01100100_11001100;
        4'h4:  col_temp <= 64'b01001001_01001001_01001001_01001001_01001001_01001001_01001001_10001001;
	endcase
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