module ThreeToEight (
    input  [2:0] I,
    output [7:0] Y
);
  wire n0, n1, n2;
  not (n0, I[0]);
  not (n1, I[1]);
  not (n2, I[2]);

  and (Y[0], n0, n1, n2);
  and (Y[1], I[0], n1, n2);
  and (Y[2], n0, I[1], n2);
  and (Y[3], I[0], I[1], n2);
  and (Y[4], n0, n1, I[2]);
  and (Y[5], I[0], n1, I[2]);
  and (Y[6], n0, I[1], I[2]);
  and (Y[7], I[0], I[1], I[2]);


endmodule
