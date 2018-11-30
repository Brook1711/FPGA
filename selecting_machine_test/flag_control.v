module flag_control(clk, rst, BTN_pulse, flag)
input clk;
input rst;
input [6:0] BTN_pulse;
output reg [6:0] flag;

always @(posedge clk or posedge rst ) begin
	if (rst) begin
		// reset
		flag <= 7'b111_1111;
	end
	else if () begin
		
	end
end

endmodule