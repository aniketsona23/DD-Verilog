`include "../fourOneMUX/fourOne.v"

module Code (
    input [7:0] I,
    input [2:0] Sel,
    output Y
);

  wire [3:0] w;
  assign w[3] = 1'b1;
  assign w[2] = 1'b1;

  FourOneMux F1 (
      I[3:0],
      Sel[1:0],
      w[0]
  );
  FourOneMux F2 (
      I[7:4],
      Sel[1:0],
      w[1]
  );

  FourOneMux F3 (
      w,
      {1'b0, Sel[2]},
      Y
  );


endmodule
