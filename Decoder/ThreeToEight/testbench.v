`include "behavioural.v"
module Tester;

  reg  [2:0] I;
  wire [7:0] Y;

  parameter stop_time = 100;
  Code UUT (
      I,
      Y
  );

  initial #stop_time $finish;
  initial begin
    I = 3'b000;
    #10 I = 3'b001;
    #10 I = 3'b010;
    #10 I = 3'b011;
    #10 I = 3'b100;
    #10 I = 3'b101;
    #10 I = 3'b110;
    #10 I = 3'b111;
  end

  initial begin
    $monitor("I = %b | Y = %b", I, Y);
  end


endmodule
