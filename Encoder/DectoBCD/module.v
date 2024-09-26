
// Converting Decimal to BCD code using Encoder 
module DecToBCD (
    input  [3:0] I,
    output [3:0] Y
);
  or (Y[0], 1'b0, I[0]);
  or (Y[1], 1'b0, I[1]);
  or (Y[2], 1'b0, I[2]);
  or (Y[3], 1'b0, I[3]);



endmodule
