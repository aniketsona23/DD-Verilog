`include "../fourOneMUX/fourOne.v"

module Code (
    input  A,
    input  B,
    input  Cin,
    output S,
    output Cout
);

  wire [3:0] temp1;
  assign temp1[0] = Cin;
  assign temp1[1] = !Cin;
  assign temp1[2] = !Cin;
  assign temp1[3] = Cin;



  FourOneMux F1 (
      temp1,
      {A, B},
      S
  );

  FourOneMux F2 (
      {1'b1, Cin, Cin, 1'b0},
      {A, B},
      Cout
  );



endmodule
