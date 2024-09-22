module TwoOneMux(
    input [1:0] I,
    input S,
    output Y);

    assign Y = (!S)*I[0] + S*I[1];
    


endmodule

