// D Latch Normal

module d_latch(input enable,input D,output reg Q,);

    always @(enable or D)
    begin
        if(enable)
            Q = D;
    end


endmodule