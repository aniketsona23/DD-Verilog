`include "../fullAdder.v"

module Tester;
  reg A, B, Cin;
  wire Cout, S;

  parameter stop_time = 100;

  fa_decoder UUT (
      A,
      B,
      Cin,
      S,
      Cout
  );

  initial #stop_time $finish;
  initial begin
    A   = 0;
    B   = 0;
    Cin = 0;
    #10 A = 0;
    B   = 0;
    Cin = 1;
    #10 A = 0;
    B   = 1;
    Cin = 0;
    #10 A = 0;
    B   = 1;
    Cin = 1;
    #10 A = 1;
    B   = 0;
    Cin = 0;
    #10 A = 1;
    B   = 0;
    Cin = 1;
    #10 A = 1;
    B   = 1;
    Cin = 0;
    #10 A = 1;
    B   = 1;
    Cin = 1;
  end

  initial begin
    $monitor("A = %b B = %b Cin = %b | S = %b Cout = %b", A, B, Cin, S, Cout);
  end
endmodule
