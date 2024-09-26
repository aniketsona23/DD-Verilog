// 1 Bit Half Adder

module half_adder (
    input Ain,
    input Bin,
    output S,
    output Cout
);

xor(S,Ain,Bin);
and(Cout,Ain,Bin);
    
endmodule