`include "../HalfAdder/half_adder.v"

// "1 Bit Full Adder" using "Two 1 Bit Half Adder"

module full_adder_unit(Ain,Bin,Cin,S,Cout);
    input Ain,Bin,Cin;
    output S,Cout;

    wire w1,w2,o1;
    half_adder HA1(Ain,Bin,o1,w1);
    half_adder HA2(o1,Cin,S,w2);

    or (Cout,w2,w1);

endmodule