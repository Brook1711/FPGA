//top:selecting_machine
//date:2018/11/28
//auther:Guo Xufeng

module selecting_machine(clk, BTN, digit_scan, digit_cath, row, col);
input clk;//H=50M;T=20ns
input [7:0] BTN;
output [6:0] digit_scan;
output [5:0] digit_cath;
output [7:0] row;
output [7:0] col;

wire [7:0] BTN_pulse;

wire [6:0] BTN_clk;
frequency_divider
	#(.N(12500000))//H=2;T=0.5s
	u_clk_6
	(
	.clkin(clk),
	.clkout(BTN_clk[6])
	);

frequency_divider
	#(.N(10000000))//H=2.5;T=0.4s
	u_clk_5
	(
	.clkin(clk),
	.clkout(BTN_clk[5])
	);

frequency_divider
	#(.N(7500000))//H=10/3;T=0.3s
	u_clk_4
	(
	.clkin(clk),
	.clkout(BTN_clk[4])
	);
frequency_divider
	#(.N(5000000))//H=5;T=0.2s
	u_clk_3
	(
	.clkin(clk),
	.clkout(BTN_clk[3])
	);

frequency_divider
	#(.N(2500000))//H=10;T=0.1s
	u_clk_2
	(
	.clkin(clk),
	.clkout(BTN_clk[2])
	);

frequency_divider
	#(.N(2000000))//H=12.5;T=0.08s
	u_clk_1
	(
	.clkin(clk),
	.clkout(BTN_clk[1])
	);
frequency_divider
	#(.N(1250000))//H=2;T=0.05s
	u_clk_0
	(
	.clkin(clk),
	.clkout(BTN_clk[0])
	);
debounce 
	#(.N(7))
	u1
	(
	.clk(clk),
	.rst(BTN[7]),
	.key(~BTN[6:0]),
	.key_pulse(BTN_pulse[6:0]),
	);

endmodule

