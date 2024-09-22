module sr_latch(input enable,input S,input R,output reg Q,output reg Qn);

    always @(*)
    begin
        if(enable)
        begin
            // if(!S && R)begin
            //     Q<=1'b0;Qn<=1'b1;
            // end
            // else if (S && !R)begin
            //     Q<=1'b1;Qn<=1'b0;
            // end
            // else if (S && R)begin
            //     Q<=1'bx; Qn<=1'bx;
            // end
            case ({S,R})
                2'b01 :begin
                    Q <= 0;Qn<=1;
                end
                2'b10 :begin
                    Q <= 1;Qn<=0;
                end
                default: begin
                    Q <= Q;
                    Qn <=Qn;
                end
            endcase
        end
    end


endmodule