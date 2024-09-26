// One to Two DeMUX

module OneTwoMux (
    input I,
    input Sel,
    output [1:0] Y
);

  assign Y[0] = (!Sel) * I;
  assign Y[1] = Sel * I;

endmodule
