`timescale 1ns/1ns

module frequency_divider_top(clkin, clkout);
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