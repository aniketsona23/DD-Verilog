`include "Full_Unit_adder.v"

module full_unit_Add_test;

reg Ain,Bin,Cin;
wire S,Cout;

parameter stop_time = 80;

full_adder_unit UUT(Ain,Bin,Cin,S,Cout);

initial #stop_time $finish;
initial begin
    $dumpfile("out.vsd");
    $dumpvars(0,full_unit_Add_test);

        Ain=0 ; Bin=0; Cin=0;
    #10 Ain=0 ; Bin=0; Cin=1;
    #10 Ain=0 ; Bin=1; Cin=0;
    #10 Ain=0 ; Bin=1; Cin=1;
    #10 Ain=1; Bin=0; Cin=0;
    #10 Ain=1 ; Bin=0; Cin=1;
    #10 Ain=1 ; Bin=1; Cin=0;
    #10 Ain=1 ; Bin=1; Cin=1;
end

initial begin
    $monitor("Time = %0d Ain = %b Bin = %b Cin=%b S = %b Cout = %b",$time,Ain,Bin,Cin,S,Cout);
end

endmodule