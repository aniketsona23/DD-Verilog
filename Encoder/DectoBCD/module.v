module DecToBCD (
    input  [3:0] I,
    output [3:0] Y
);
  or (Y[0], 0, I[0]);
  or (Y[1], 0, I[1]);
  or (Y[2], 0, I[2]);
  or (Y[3], 0, I[3]);



endmodule
