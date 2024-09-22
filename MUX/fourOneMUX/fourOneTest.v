`include "fourOne.v"

module FourOneTest;
reg [3:0] I;
reg [1:0] Sel;
wire Y;

parameter stop_time =100;

FourOneMux UUT(I,Sel,Y);

initial #stop_time $finish;
initial begin
    $dumpfile("hel.vsd");
    $dumpvars(0,FourOneTest);
    I = 4'b0110 ; Sel = 2'b00;
    #10 I = 4'b0110 ; Sel = 2'b01;
    #10 I = 4'b0110 ; Sel = 2'b10;
    #10 I = 4'b0110 ; Sel = 2'b11;
    #10 I = 4'b1010 ; Sel = 2'b00;
    #10 I = 4'b1010 ; Sel = 2'b01;
    #10 I = 4'b1010 ; Sel = 2'b10;
    #10 I = 4'b1010 ; Sel = 2'b11;
end

initial begin
    $monitor("I0 = %b\nI1 = %b\nI2 = %b\nI3 = %b\n Selector = %b \tY = %b\n\n",I[0],I[1],I[2],I[3],Sel,Y);
end
endmodule