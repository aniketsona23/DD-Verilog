`include "../Full_Unit_Adder/Full_Unit_adder.v"

module bitfouradder(
    input [3:0] Ain,
    input [3:0] Bin,
    input  Cin,
    output [3:0] S,
    output Cout
);
wire w1,w2,w3;
full_adder_unit FA1(Ain[0],Bin[0],Cin,S[0],w1);
full_adder_unit FA2(Ain[1],Bin[1],w1,S[1],w2);
full_adder_unit FA3(Ain[2],Bin[2],w2,S[2],w3);
full_adder_unit FA4(Ain[3],Bin[3],w3,S[3],Cout);

    
endmodule