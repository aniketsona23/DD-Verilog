`include "../OneFourMUX/module.v"

module OEightFOFour (
    input I,
    input [2:0] Sel,
    output [7:0] Y
);

  wire [3:0] W;
  OneFourMux F11 (
      I,
      {Sel[2], Sel[2]},
      W
  );
  OneFourMux F21 (
      W[0],
      S[1:0],
      Y[3:0]
  );
  OneFourMux F22 (
      W[3],
      S[1:0],
      Y[7:4]
  );


endmodule
