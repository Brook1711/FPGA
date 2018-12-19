module flash(clk_2, rst, finnal_flag, switch);
input clk_2;
input rst;
input finnal_flag;
output reg switch;
reg [2:0] cnt;
initial
begin
	switch<=1;
	cnt<=0;
end

always @(posedge clk_2 or posedge rst) begin
	if (rst) begin
		// reset
		switch<=1;
		cnt<=0;
	end
	else if (finnal_flag==0 &cnt<6) begin
		switch<=~switch;
		cnt<=cnt+1;
	end
	else if (cnt==6) begin
		switch<=1;
		cnt<=7;
	end
	else begin
		switch<=switch;
	end
end
endmodule