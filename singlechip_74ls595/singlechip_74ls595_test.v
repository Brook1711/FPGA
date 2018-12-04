module singlechip_74ls595_test(clk, SI, Q, QH, SCLR, SCK, RCK, G);
input clk;
input SI;
output [7:0] Q;
output QH;
input SCLR;//低电平时移位寄存器数据清零
input SCK;//上升沿时数据移位
input RCK;//上升沿时数据进入寄存器
input G;//高电平时禁止输出

singlechip_74ls595 u1(
	.SI(SI),
	.Q(Q),
	.QH(QH),
	.SCLR(SCLR),
	.SCK(SCK),
	.RCK(RCK),
	.G(G));

endmodule

module singlechip_74ls595(SI, Q, QH, SCLR, SCK, RCK, G);
input SI;
output [7:0] Q;
output QH;
input SCLR;//低电平时移位寄存器数据清零
input SCK;//上升沿时数据移位
input RCK;//上升沿时数据进入寄存器
input G;//高电平时禁止输出

wire [7:0] Q_temp;

singlechip_74ls374 F0(
	.SCLR(SCLR),
	.OC_(G),
	.clk(SCK),
	.D(SI),
	.Q(Q_temp[0]));

singlechip_74ls374 F1(
	.SCLR(SCLR),
	.OC_(G),
	.clk(SCK),
	.D(Q_temp[0]),
	.Q(Q_temp[1]));

singlechip_74ls374 F2(
	.SCLR(SCLR),
	.OC_(G),
	.clk(SCK),
	.D(Q_temp[1]),
	.Q(Q_temp[2]));

singlechip_74ls374 F3(
	.SCLR(SCLR),
	.OC_(G),
	.clk(SCK),
	.D(Q_temp[2]),
	.Q(Q_temp[3]));

singlechip_74ls374 F4(
	.SCLR(SCLR),
	.OC_(G),
	.clk(SCK),
	.D(Q_temp[3]),
	.Q(Q_temp[4]));

singlechip_74ls374 F5(
	.SCLR(SCLR),
	.OC_(G),
	.clk(SCK),
	.D(Q_temp[4]),
	.Q(Q_temp[5]));

singlechip_74ls374 F6(
	.SCLR(SCLR),
	.OC_(G),
	.clk(SCK),
	.D(Q_temp[5]),
	.Q(Q_temp[6]));

singlechip_74ls374 F7(
	.SCLR(SCLR),
	.OC_(G),
	.clk(SCK),
	.D(Q_temp[6]),
	.Q(Q_temp[7]));

assign QH = Q_temp[7];

singlechip_74ls374 OUT0(
	.SCLR(1),
	.OC_(G),
	.clk(RCK),
	.D(Q_temp[0]),
	.Q(Q[0]));

singlechip_74ls374 OUT1(
	.SCLR(1),
	.OC_(G),
	.clk(RCK),
	.D(Q_temp[1]),
	.Q(Q[1]));

singlechip_74ls374 OUT2(
	.SCLR(1),
	.OC_(G),
	.clk(RCK),
	.D(Q_temp[2]),
	.Q(Q[2]));

singlechip_74ls374 OUT3(
	.SCLR(1),
	.OC_(G),
	.clk(RCK),
	.D(Q_temp[3]),
	.Q(Q[3]));

singlechip_74ls374 OUT4(
	.SCLR(1),
	.OC_(G),
	.clk(RCK),
	.D(Q_temp[4]),
	.Q(Q[4]));

singlechip_74ls374 OUT5(
	.SCLR(1),
	.OC_(G),
	.clk(RCK),
	.D(Q_temp[5]),
	.Q(Q[5]));

singlechip_74ls374 OUT6(
	.SCLR(1),
	.OC_(G),
	.clk(RCK),
	.D(Q_temp[6]),
	.Q(Q[6]));

singlechip_74ls374 OUT7(
	.SCLR(1),
	.OC_(G),
	.clk(RCK),
	.D(Q_temp[7]),
	.Q(Q[7]));
endmodule

module singlechip_74ls374(SCLR, OC_, clk, D, Q);//寄存器
input SCLR;
input OC_;//低电平时电路正常工作，高电平时输出禁止态
input clk;
input D;
output Q;

reg Q_temp;

assign Q = OC_ == 0 ? (SCLR == 1 ? Q_temp : 0) :1'bz ;

always @(posedge clk) begin
	Q_temp <= D;
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