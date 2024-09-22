`include "twoOne.v"

module TwoOneTest;

reg [1:0] I;
reg S;
wire Y;

parameter stop_time = 100;

TwoOneMux UUT(I,S,Y);
initial #stop_time $finish;
initial begin 
    $dumpfile("xxx.vsd");
    $dumpvars(0,TwoOneTest);
    I = 2'b01; S=0;
    #10 I = 2'b01; S=1;
    #10 I = 2'b11; S=0;
    #10 I = 2'b11; S=1;
    #10 I = 2'b10; S=0;
    #10 I = 2'b10; S=1;
end

initial begin
    $monitor("Time = %0d I0 = %b I1 = %b S = %b Y = %b",$time,I[0],I[1],S,Y);
end

endmodule