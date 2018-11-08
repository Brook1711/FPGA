module vote3 (
	input wire a,
	input wire b,
	input wire c,
	output wire led);
		assign led =(a & b) | (a & c) | (b & c) ;
endmodule