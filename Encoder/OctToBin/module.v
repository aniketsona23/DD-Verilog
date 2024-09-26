// Converting Octal to Binary using Encoder
module Code(input [7:0] inp, output [7:0]out);
    or(out[0],1'b0,inp[0]);
    or(out[1],1'b0,inp[1]);
    or(out[2],1'b0,inp[2]);
    or(out[3],1'b0,inp[3]);
    or(out[4],1'b0,inp[4]);
    or(out[5],1'b0,inp[5]);
    or(out[6],1'b0,inp[6]);
    or(out[7],1'b0,inp[7]);
endmodule