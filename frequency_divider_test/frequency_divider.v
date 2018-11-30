module frequency_divider_top(clk, clkout);
input clk;
output clkout;
frequency_divider 
	#(.N(1))
	u1
	(
	.clkin(clk),
	.clkout(clkout)
	);

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