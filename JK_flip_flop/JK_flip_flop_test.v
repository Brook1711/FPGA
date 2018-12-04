module JK_flip_flop_test(clk, rst, J, K, SD, RD, Q, Q_);
input clk, rst, J, K, SD, RD;
output Q;
output Q_;


wire clk_2;

frequency_divider #(.N(12500000)) u_clk_6(
	.clkin(clk),
	.clkout(clk_2)
	);
JK_flip_flop u_JK(
	.clk(clk_2),
	.J(J),
	.K(K),
	.SD(SD),
	.RD(RD),
	.Q(Q),
	.Q_(Q_)
	);

endmodule

module JK_flip_flop(clk, J, K, SD, RD, Q, Q_);
input clk, J, K, SD, RD;
output Q;
output Q_;

wire Q1;

assign Q_ = (SD^RD==1)? SD : ((SD == 1)? ~Q1:1'bz);

assign Q = (SD^RD==1)? RD : ((SD == 1)? Q1:1'bz);

JK_flip_flop_part1 u_JK_part1(
	.clk(clk),
	.J(J),
	.K(K),
	.Q(Q1),
	);

endmodule

module JK_flip_flop_part1(clk, J, K, Q);
input clk, J, K;
output reg Q;

always @(negedge clk) begin
	if (J == 0 & K == 0) begin
			Q<=Q;
	end
	else if (J == 0 & K == 1) begin
			Q<=0;
	end
	else if (J == 1 & K == 0) begin
			Q<=1;
	end
	else if (J == 1 & K == 1) begin
			Q<=!Q;
	end
	else begin
			Q<=Q;
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