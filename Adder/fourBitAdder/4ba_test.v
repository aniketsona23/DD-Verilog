`include "4bitadder.v"

module bitfouraddertest;

reg [3:0] Ain, Bin;
reg Cin;
wire [3:0] S;
wire Cout;

parameter stop_time = 160;
bitfouradder UUT(Ain,Bin,Cin,S,Cout);
initial #stop_time $finish;
initial begin
    $dumpfile("out.vsd");
    $dumpvars(0,bitfouraddertest);

    Ain = 4'b0100; Bin =4'b1001 ; Cin=0;
    #10 Ain = 4'b0110; Bin =4'b0001 ; Cin=0;
    #10 Ain = 4'b1110; Bin =4'b0011 ; Cin=0;
    #10 Ain = 4'b0101; Bin =4'b1101 ; Cin=0;
end

initial begin
    $monitor("Time = %0d Ain = %b Bin = %b Cin=%b S = %b Cout = %b",$time,Ain,Bin,Cin,S,Cout);
end
endmodule