// Making Priority Encoder 

module FourTwo (
    input  [3:0] I,
    output [1:0] Y
);

  wire w, n;
  or o1 (Y[1], I[3], I[2]);
  not ni2 (n, I[2]);

  and (w, n, I[1]);

  or (Y[0], w, I[3]);

endmodule
