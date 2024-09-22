`include "module.v"

module Tester;
  reg I;
  reg [2:0] Sel;
  wire [7:0] Y;

  parameter stop_time = 200;

  OneEightMux UUT (
      I,
      Sel,
      Y
  );

  initial #stop_time $finish;
  initial begin
    $dumpfile("hell.vsd");
    $dumpvars(0, Tester);

    I   = 0;
    Sel = 3'b000;
    #10 I = 0;
    Sel = 3'b001;
    #10 I = 0;
    Sel = 3'b010;
    #10 I = 0;
    Sel = 3'b011;
    #10 I = 0;
    Sel = 3'b100;
    #10 I = 0;
    Sel = 3'b101;
    #10 I = 0;
    Sel = 3'b110;
    #10 I = 0;
    Sel = 3'b111;
    #10 I = 1;
    Sel = 3'b000;
    #10 I = 1;
    Sel = 3'b001;
    #10 I = 1;
    Sel = 3'b010;
    #10 I = 1;
    Sel = 3'b011;
    #10 I = 1;
    Sel = 3'b100;
    #10 I = 1;
    Sel = 3'b101;
    #10 I = 1;
    Sel = 3'b110;
    #10 I = 1;
    Sel = 3'b111;
  end

  initial begin
    $monitor("I = %b Sel = %b | Y0 = %b Y1 = %b Y2 = %b Y3 = %b Y4 = %b Y5 = %b Y6 = %b Y7 = %b",
             I, Sel, Y[0], Y[1], Y[2], Y[3], Y[4], Y[5], Y[6], Y[7]);
  end


endmodule
