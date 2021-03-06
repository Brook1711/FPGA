
`timescale 1ns/1ns
module LED_FLOW;
 
reg CLOCK_50M;
reg RST_N;
wire [9:0] LED;
 
led led_inst
(
  .clk_50M(CLOCK_50M),
  .reset_n(RST_n),
  .led(LED)
);
 
initial
begin
  CLOCK_50M = 0;
  while (1)
    #10 CLOCK_50M = ~CLOCK_50M;
end
 
initial
begin
  RST_N = 0;
  while (1)
    #10 RST_N = 1;
end
 

endmodule