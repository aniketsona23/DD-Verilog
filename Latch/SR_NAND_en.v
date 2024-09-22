module sr_nand_en(input en,input s , input r, output reg q, output reg qn);
 always @(*)
 begin
    if(en)begin
        if(!s && r)begin
            q=1'b0;qn=1'b1;
        end
        else if (s && !r)begin
            q=1'b1 ; qn =1'b0;
        end
        else if(s && r) begin
            q=1'bx ; qn = 1'bx;
        end
    
    end
 end

endmodule