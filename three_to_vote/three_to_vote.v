module three_to_vote(sw3, agreement);
input [2:0] sw3;
output reg agreement;
wire result;
wire w1, w2, w3;
always@(sw3) begin
	agreement=~result;
end

gate_1 u1(
	.a(sw3[0]),
	.b(sw3[1]),
	.out(w1));
gate_1 u2(
	.a(sw3[0]),
	.b(sw3[2]),
	.out(w2));
gate_1 u3(
	.a(sw3[1]),
	.b(sw3[2]),
	.out(w3));
gate_2 u4(
	.a(w1),
	.b(w2),
	.c(w3),
	.out(result));
endmodule

module NAND2(a ,b , out);
input a;
input b;
output reg out;

always @(a or b) begin
	if ({a,b}==2'b11) begin
		out=1'b0;
		
	end
	else begin
		out=1'b1;
	end
end

endmodule

module gate_1(out,a,b);
input a,b;
output out;
assign out=~(a&b);
endmodule 

module gate_2(out,a,b,c);
input a,b,c;
output out;
assign out=~(a&b&c);
endmodule 

module NAND3(a ,b ,c , out);
input a;
input b;
input c;
output reg out;

always @(a or b or c) begin
	if ({a ,b ,c}==3'b111) begin
		out=1'b0;
		
	end
	else begin
		out=1'b1;
	end
end

endmodule