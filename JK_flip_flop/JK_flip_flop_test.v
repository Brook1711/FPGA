`timescale 1ns/1ns
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
output Q, Q_;

reg Q1;

wire clr;

assign clr = SD & RD;
assign judgez = SD|RD;
assign Q_ = ~Q1;

assign Q = Q1;

//assign Q_ = (SD^RD==1)? SD : ((SD == 1)? ~Q1:1'bz);

//assign Q = (SD^RD==1)? RD : ((SD == 1)? Q1:1'bz);


initial 
begin
	Q1=0;
end
always @(posedge clk or negedge clr or negedge judgez) begin
if (judgez==0) begin
	Q1<=1'bz;
end
else if (clr==0) begin
	Q1<=RD;
end

else begin
	if (J == 0 & K == 0) begin
			Q1<=Q1;
	end
	else if (J == 0 & K == 1) begin
			Q1<=0;
	end
	else if (J == 1 & K == 0) begin
			Q1<=1;
	end
	else if (J == 1 & K == 1) begin
			Q1<=!Q1;
	end
	else begin
			Q1<=Q1;
	end
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
cnt<=0;
clkout<=0;
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