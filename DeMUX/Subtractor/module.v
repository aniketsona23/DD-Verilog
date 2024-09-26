`include "../OneEightMUX/module.v"

// Subtractor using One to Eight DeMUX

module Code (
    input  A,
    input  B,
    input  B0,
    output D,
    output B1
);

  wire [7:0] W;
  OneEightMux O (
      1'b1,
      {A, B, B0},
      W
  );
  or (D, W[1], W[2], W[4], W[7]);
  or (B1, W[1], W[2], W[3], W[7]);


endmodule
