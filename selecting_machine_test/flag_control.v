module flag_control(clk, rst, BTN_pulse, flag)
input clk;
input rst;
input [6:0] BTN_pulse;
output reg [6:0] flag;
initial
flag<=7'b111_1111;
end

always @(posedge clk or posedge rst ) begin
	if (rst) begin
		// reset
		flag <= 7'b111_1111;
	end
	else if (BTN_pulse[6]) begin
		flag[6]<=0;
	end
	else if (BTN_pulse[5] & flag[6] == 0) begin
		flag[5]<=0;
	end
	else if (BTN_pulse[4] & flag[5] == 0) begin
		flag[4]<=0;
	end
	else if (BTN_pulse[3] & flag[4] == 0) begin
		flag[3]<=0;
	end
	else if (BTN_pulse[2] & flag[3] == 0) begin
		flag[2]<=0;
	end
	else if (BTN_pulse[1] & flag[2] == 0) begin
		flag[1]<=0;
	end
	else if (BTN_pulse[0] & flag[1] == 0) begin
		flag[0]<=0;
	end
	else begin
		flag<=flag;
	end
end

endmodule