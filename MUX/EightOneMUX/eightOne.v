`include "../twoOneMUX/twoOne.v"

module EightOneMux (
    input [7:0] I,
    input [2:0] Sel,
    output Y
);

  wire [6:0] w;
  TwoOneMux T1 (
      I[7:6],
      Sel[0],
      w[3]
  );
  TwoOneMux T2 (
      I[5:4],
      Sel[0],
      w[2]
  );
  TwoOneMux T3 (
      I[3:2],
      Sel[0],
      w[1]
  );
  TwoOneMux T4 (
      I[1:0],
      Sel[0],
      w[0]
  );

  TwoOneMux T5 (
      w[3:2],
      Sel[1],
      w[5]
  );
  TwoOneMux T6 (
      w[1:0],
      Sel[1],
      w[4]
  );

  TwoOneMux T7 (
      w[5:4],
      Sel[2],
      Y
  );

endmodule
