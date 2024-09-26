// Normal D Flip Flop (Synchronous only) without reset
module dff (
    input clk,
    input d,
    output reg q
);
    always @(posedge clk) begin
        q<=d;    
    end
endmodule