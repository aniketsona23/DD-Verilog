`include "../OneTwoMUX/module.v"

module OneFourMux (
    input I,
    input [1:0] Sel,
    output [3:0] Y
);

  //   assign Y[0] = (!Sel[1]) * (!Sel[0]) * I;
  //   assign Y[1] = (!Sel[1]) * (Sel[0]) * I;
  //   assign Y[2] = (Sel[1]) * (!Sel[0]) * I;
  //   assign Y[3] = (Sel[1]) * (Sel[0]) * I;
  wire [1:0] w;
  OneTwoMux T1 (
      I,
      Sel[1],
      w
  );
  OneTwoMux T2 (
      w[0],
      Sel[0],
      Y[1:0]
  );
  OneTwoMux T3 (
      w[1],
      Sel[0],
      Y[3:2]
  );

endmodule
