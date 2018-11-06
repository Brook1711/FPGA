module LED_test(sw,led);
//test为自己的工程名
    input [7:0] sw;
    output [7:0] led;
    assign led = sw;

endmodule