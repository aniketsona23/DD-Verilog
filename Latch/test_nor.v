`include "SR_NAND.v"

module test_SRlatch;
reg t_S, t_R;
wire t_Q, t_Qbar;

sr_nand sr(t_S, t_R, t_Q, t_Qbar);

initial begin 
        t_S = 0; t_R = 1;
    #10 t_S = 1; t_R = 1;
    #10 t_S = 1; t_R = 0;
    #10 t_S = 1; t_R = 1;
    #10 t_S = 0; t_R = 0;
    #10 t_S = 1; t_R = 1;
    #10 $finish;
end

initial begin 
    $monitor("Time: %0d, S: %b, R: %b, Q: %b, Qbar: %b", $time, t_S, t_R, t_Q, t_Qbar);
end
endmodule 
