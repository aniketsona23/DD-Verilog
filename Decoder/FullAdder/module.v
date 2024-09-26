`include "../ThreeToEight/module.v"

// 1-Bit Full Adder using "Three to Eight Decoder"

module Code (
    input  A,
    input  B,
    input  Cin,
    output S,
    output Cout
);

  wire [7:0] W;
  ThreeToEight T (
      {A, B, Cin},
      W
  );

  or (S, W[1], W[2], W[4], W[7]);
  or (Cout, W[3], W[5], W[6], W[7]);


endmodule
