`include "module.v"

module Tester;
  reg I;
  reg Sel;
  wire [1:0] Y;

  parameter stop_time = 40;

  OneTwoMux UUT (
      I,
      Sel,
      Y
  );

  initial #stop_time $finish;
  initial begin
    $dumpfile("hell.vsd");
    $dumpvars(0, Tester);

    I   = 0;
    Sel = 0;
    #10 I = 0;
    Sel = 1;
    #10 I = 1;
    Sel = 0;
    #10 I = 1;
    Sel = 1;


  end
  initial begin
    $monitor("I = %b Sel = %b Y0 = %b Y1 = %b", I, Sel, Y[0], Y[1]);
  end

endmodule
