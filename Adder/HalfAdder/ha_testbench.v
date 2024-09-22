`include "half_adder.v"

module half_add_tester;
reg Ain,Bin;
wire S,Cout;

parameter stop_time =50 ;

half_adder UUT(Ain,Bin,S,Cout);

initial #stop_time $finish;
initial begin
    $dumpfile("half_add.vsd");
    $dumpvars(0,half_add_tester);

    Ain=0;Bin=0;
    #10 Ain=0;Bin=1;
    #10 Ain=1;Bin=0;
    #10 Ain=1;Bin=1;
end

initial begin
    $monitor("Time = %0d Ain = %b Bin = %b S = %b Cout = %b",$time,Ain,Bin,S,Cout);
end

endmodule