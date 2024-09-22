`include "module.v"
module Tester;
  reg  [3:0] I;
  wire [1:0] Y;

  parameter stop_time = 180;

  FourTwo UUT (
      I,
      Y
  );

  initial #stop_time $finish;
  initial begin
    $dumpfile("hell.vsd");
    $dumpvars(0, Tester);
    I = 4'b0000;
    #10 I = 4'b0001;
    #10 I = 4'b0010;
    #10 I = 4'b0011;
    #10 I = 4'b0100;
    #10 I = 4'b0101;
    #10 I = 4'b0110;
    #10 I = 4'b0111;
    #10 I = 4'b1000;
    #10 I = 4'b1001;
    #10 I = 4'b1010;
    #10 I = 4'b1011;
    #10 I = 4'b1100;
    #10 I = 4'b1101;
    #10 I = 4'b1110;
    #10 I = 4'b1111;
  end

  initial begin
    $monitor("I = %b | Y = %d", I, Y);
  end



endmodule
