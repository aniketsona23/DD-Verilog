`include "SR_NAND_en.v"

module Tester ;
reg en;
reg s,r;

wire q,qn;

parameter stop_time = 100;

sr_nand_en UUT(en,s,r,q,qn);

initial #stop_time $finish;
initial begin
    en=0;s=0 ; r=0;
    #10 en=1;s=0 ; r=0;
    #10 en=1;s=0 ; r=1;
    #10 en=1;s=1; r=0;
    #10 en=1;s=1 ; r=1;
end


endmodule