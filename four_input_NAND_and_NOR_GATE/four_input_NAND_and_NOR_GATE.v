module four_input_NAND_and_NOR_GATE(swa ,swo , LED_N5_R, LED_T6_G);
input [3:0] swa;
input [3:0] swo;
output reg LED_N5_R;
output reg LED_T6_G;
wire outa;
wire outo;
always @(swo or swa) begin
	LED_N5_R=~outa;
	LED_T6_G=~outo;
	
end
four_input_NAND NAND(
	.sw4(swa),
	.out(outa)
	);

four_input_NOR NOR(
	.sw4(swo),
	.out(outo)
	);

endmodule

module four_input_NAND(sw4, out);
input [3:0] sw4;
output reg out;

always @(sw4) begin
	if (sw4==4'b1111) begin
		out=1'b0;
		
	end
	else begin
		out=1'b1;
	end
end

endmodule


module four_input_NOR(sw4, out);
input [3:0] sw4;
output reg out;

always @(sw4) begin
	if (sw4==4'b0000) begin
		out=1'b1;
		
	end
	else begin
		out=1'b0;
	end
end

endmodule