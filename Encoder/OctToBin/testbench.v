`include "module.v"

module Tester;

reg [7:0] inp;
wire [7:0] out;

parameter stop_time = 90;

Code UUT(inp,out);

initial #stop_time $finish;
initial begin
    inp = 0;
    #10 inp =1;
    #10 inp =2;
    #10 inp =3;
    #10 inp =4;
    #10 inp =5;
    #10 inp =6;
    #10 inp =7;
end

initial begin
    $monitor("Time = %0d , Input = %0o | Output = %3b",$time,inp,out);
end

endmodule