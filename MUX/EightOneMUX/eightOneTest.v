`include "eightOne.v"

module EightOneTest;
  reg [7:0] I;
  reg [2:0] Sel;
  wire Y;

  parameter stop_time = 200;

  EightOneMux UUT (
      I,
      Sel,
      Y
  );

  initial #stop_time $finish;
  initial begin
    $dumpfile("hell.vsd");
    $dumpvars(0, EightOneTest);
    I   = 8'b00010011;
    Sel = 3'b100;
    #10 I = 8'b00000001;
    Sel = 3'b001;
    #10 I = 8'b00000010;
    Sel = 3'b010;
    #10 I = 8'b00000010;
    Sel = 3'b001;
    #10 I = 8'b00000100;
    Sel = 3'b010;
    #10 I = 8'b00001001;
    Sel = 3'b100;
    #10 I = 8'b00100001;
    Sel = 3'b101;
    #10 I = 8'b10100001;
    Sel = 3'b111;
    #10 I = 8'b10100001;
    Sel = 3'b001;
  end
  initial begin
    $monitor(
        "I0 = %b\nI1 = %b\nI2 = %b\nI3 = %b\nI4 = %b\nI5 = %b\nI6 = %b\nI7 = %b\nSelector = %b\tY = %b\n\n",
        I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7], Sel, Y);
  end
endmodule
