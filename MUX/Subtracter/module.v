`include "../fourOneMUX/fourOne.v"

module Code (
    input  A,
    input  B,
    input  B0,
    output D,
    output B1
);
  FourOneMux F1 (
      {B0, !B0, !B0, B0},
      {A, B},
      D
  );
  FourOneMux F2 (
      {B0, 1'b0, 1'b1, B0},
      {A, B},
      B1
  );


endmodule
