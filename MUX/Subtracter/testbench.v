`include "module.v"

module Tester;

  reg A, B, B0;
  wire D, B1;

  parameter stop_time = 100;
  Code UUT (
      A,
      B,
      B0,
      D,
      B1
  );

  initial #stop_time $finish;
  initial begin
    $dumpfile("hell.vsd");
    $dumpvars(0, Tester);
    A  = 0;
    B  = 0;
    B0 = 0;
    #10 A = 0;
    B  = 0;
    B0 = 1;
    #10 A = 0;
    B  = 1;
    B0 = 0;
    #10 A = 0;
    B  = 1;
    B0 = 1;
    #10 A = 1;
    B  = 0;
    B0 = 0;
    #10 A = 1;
    B  = 0;
    B0 = 1;
    #10 A = 1;
    B  = 1;
    B0 = 0;
    #10 A = 1;
    B  = 1;
    B0 = 1;

  end
  initial begin
    $monitor("A = %b B = %b B0 = %b | D = %b B1 = %b ", A, B, B0, D, B1);
  end

endmodule
