module selecting_machine_startup(clk, row, col, digit_scan, digit_cath);
input clk;
output [7:0] row;
output [7:0] col;
output [7:0] digit_scan;
output [7:0] digit_cath;
wire clk_500;
wire clk_2;
reg code_test;
reg flag;
reg [2:0] cnt;
initial
begin
	cnt<=0;
	flag<=1;
	code_test<=1;
end

always @(posedge clk_2) begin
	if (cnt==6) begin
		flag<=0;
		code_test<=0;
	end
	else if (flag==1) begin
		code_test<=!code_test;
		cnt<=cnt+1;
	end
	else begin
		code_test<=0;
	end
end


frequency_divider #(.N(50000)) u_clk_500(
	.clkin(clk),
	.clkout(clk_500));
frequency_divider #(.N(12500000)) u_clk_2(
	.clkin(clk),
	.clkout(clk_2)
	);
decode_lattice_startup u_decode_lattice_startup(
.clk_500(clk_500),
.code(code_test),
.row(row),
.col(col));
decode_seg_startup u_decode_seg_startup(
	.clk_500(clk_500),
	.code(code_test),
	.digit_seg(digit_scan),
	.digit_cath(digit_cath)
	);
endmodule

module decode_lattice_startup(clk_500, code, row, col);
input clk_500;//500Hz
input code;
output reg [7:0] row;
output [7:0] col;

reg [63:0] col_temp;

reg [2:0] cnt;
always @(posedge clk_500) begin

		cnt<=cnt+1;

end

always @(posedge clk_500) begin
	case(cnt)
	3'h0: begin
		row<=8'b1111_1110;

	end
	3'h1: begin
		row<=8'b1111_1101;

	end
	3'h2: begin
		row<=8'b1111_1011;

	end
	3'h3: begin
		row<=8'b1111_0111;

	end
	3'h4: begin
		row<=8'b1110_1111;

	end
	3'h5: begin
		row<=8'b1101_1111;

	end
	3'h6: begin
		row<=8'b1011_1111;

	end
	3'h7: begin
		row<=8'b0111_1111;
	end
	default:;
	endcase
end

assign col =code==1? 8'b1111_1111:8'b0000_0000 ;

endmodule

module decode_seg_startup(clk_500, code, digit_seg, digit_cath);
input clk_500;
input code;
output [7:0] digit_seg;
output reg [7:0] digit_cath;

assign digit_seg = code==1? 8'b1111_1111:8'b0000_0000;

reg [2:0] cath_control;

always @(posedge clk_500) begin
	if (cath_control==7) begin
		cath_control<=0;
	end
	else  begin
		cath_control<=cath_control+1;
	end
end



always @(posedge clk_500) begin
	case(cath_control)
	3'h0: begin
		digit_cath<=8'b1111_1110;

	end
	3'h1: begin
		digit_cath<=8'b1111_1101;

	end
	3'h2: begin
		digit_cath<=8'b1111_1011;

	end
	3'h3: begin
		digit_cath<=8'b1111_0111;

	end
	3'h4: begin
		digit_cath<=8'b1110_1111;

	end
	3'h5: begin
		digit_cath<=8'b1101_1111;

	end
	default:;
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