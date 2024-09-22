`include "module.v"

module Tester;

  reg  [3:0] I;
  wire [3:0] Y;

  parameter stop_time = 100;
  DecToBCD UUT (
      I,
      Y
  );

  initial #stop_time $finish;
  initial begin
    I = 0;
    #10 I = 1;
    #10 I = 2;
    #10 I = 3;
    #10 I = 4;
    #10 I = 5;
    #10 I = 6;
    #10 I = 7;
    #10 I = 8;
    #10 I = 9;
  end

  initial begin
    $monitor("I = %d | Y= %b", I, I);
  end

endmodule
