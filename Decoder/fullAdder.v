`include "decoder38.v"

module fa_decoder(input A,input B, input Cin, output S,output Cout);
    wire [7:0] W;
    decoder_threeEight D({A,B,Cin},W);
    or(S,W[1],W[2],W[4],W[7]);
    or(Cout,W[3],W[5],W[6],W[7]);

endmodule