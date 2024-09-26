`include "../twoOneMUX/twoOne.v"


// "Four to One MUX" by 3 "Two to One MUX"
module FourOneMux (
    input [3:0] I,
    input [1:0] Sel,
    output Y
);

  wire [1:0] w;
  TwoOneMux T1 (
      I[3:2],
      Sel[0],
      w[1]
  );
  TwoOneMux T2 (
      I[1:0],
      Sel[0],
      w[0]
  );
  TwoOneMux T3 (
      w,
      Sel[1],
      Y
  );


endmodule
