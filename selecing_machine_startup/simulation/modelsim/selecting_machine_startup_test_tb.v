module selecting_machine_startup_test_tb(row, col, digit_scan, digit_cath);
reg clk ;
reg sw;
reg BTN_7;
reg [6:0] BTN;
output [7:0] row;
output [7:0] col;
output [7:0] digit_scan;
output [7:0] digit_cath;

initial
begin
clk = 0;

sw = 0;

BTN_7 = 0;

BTN = 6'b000000;
end
always #10 clk=~clk;
selecting_machine_startup_test u_tb(
	.clk(clk),
	.sw(sw),
	.BTN_7(BTN_7),
	.BTN(BTN), 
	.row(row),
	.col(col), 
	.digit_scan(digit_scan),
	.digit_cath(digit_cath)
	);
endmodule
