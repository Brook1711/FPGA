
`timescale 1ns/1ns
module led(
  input clk_50M,                        // System clock 50MHz
  input reset_n,                        // System reset
  output reg [9:0] led                  // led
);
 
reg [13:0] counter = 0;
reg [3:0] state = 0;

always @ (posedge clk_50M, negedge reset_n)
  if (!reset_n)
    counter <= 0;
  else
    counter <= counter + 1'b1;
     
always @ (posedge counter[13])
  if (!reset_n)
    state <= 0;
  else
  begin
    if (state == 4'b1001)
      state <= 0;
    else
      state <= state + 1'b1;
  end
   
always @ (posedge clk_50M, negedge reset_n)
  if (!reset_n)
    led <= 0;
  else
  begin
    case (state)
      4'b0000: led <= 10'b00000_00001;
      4'b0001: led <= 10'b00000_00010;
      4'b0010: led <= 10'b00000_00100;
      4'b0011: led <= 10'b00000_01000;
      4'b0100: led <= 10'b00000_10000;
      4'b0101: led <= 10'b00001_00000;
      4'b0110: led <= 10'b00010_00000;
      4'b0111: led <= 10'b00100_00000;
      4'b1000: led <= 10'b01000_00000;
      4'b1001: led <= 10'b10000_00000;
      default: led <= 10'b00000_00001;
    endcase     
  end
   
endmodule