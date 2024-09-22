`include "module.v"
module Tester;
  reg I;
  reg [1:0] Sel;
  wire [3:0] Y;

  parameter stop_time = 80;

  OneFourMux UUT (
      I,
      Sel,
      Y
  );

  initial #stop_time $finish;
  initial begin
    $dumpfile("hell.vsd");
    $dumpvars(0, Tester);

    I   = 0;
    Sel = 2'b00;
    #10 I = 0;
    Sel = 2'b01;
    #10 I = 0;
    Sel = 2'b10;
    #10 I = 0;
    Sel = 2'b11;
    #10 I = 1;
    Sel = 2'b00;
    #10 I = 1;
    Sel = 2'b01;
    #10 I = 1;
    Sel = 2'b10;
    #10 I = 1;
    Sel = 2'b11;
  end

  initial begin

    $monitor("I = %b Sel = %b | Y0 = %b Y1 = %b Y2 = %b Y3 = %b", I, Sel, Y[0], Y[1], Y[2], Y[3]);
  end


endmodule
