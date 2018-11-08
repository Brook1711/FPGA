module ex4_to_1(y, a, b, c, d);
	output y;
	input a, b, c, d;
	reg y, tmp1, tmp2;
	always @(a or c or d or b) begin
		tmp1 = a & b;
		tmp2 = c & d;
		y = ~(tmp1|tmp2);
	end
endmodule