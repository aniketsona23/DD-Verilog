`include "module.v"

module Tester;
  reg Ain, Bin, Cin;
  wire Sout, Cout;

  parameter stop_time = 100;

  Code UUT (
      Ain,
      Bin,
      Cin,
      Sout,
      Cout
  );

  initial #stop_time $finish;
  initial begin
    $dumpfile("hell.vsd");
    $dumpvars(0, Tester);

    Ain = 0;
    Bin = 0;
    Cin = 0;
    #10 Ain = 0;
    Bin = 0;
    Cin = 0;
    #10 Ain = 0;
    Bin = 0;
    Cin = 1;
    #10 Ain = 0;
    Bin = 1;
    Cin = 0;
    #10 Ain = 0;
    Bin = 1;
    Cin = 1;
    #10 Ain = 1;
    Bin = 0;
    Cin = 0;
    #10 Ain = 1;
    Bin = 0;
    Cin = 1;
    #10 Ain = 1;
    Bin = 1;
    Cin = 0;
    #10 Ain = 1;
    Bin = 1;
    Cin = 1;

  end
  initial begin
    $monitor("Ain = %b Bin = %b Cin = %b Sout=%b Cout = %b", Ain, Bin, Cin, Sout, Cout);
  end


endmodule
