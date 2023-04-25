'timescale 1ns/1ns
module Multiplier( clk, dataA, dataB, Signal, dataOut, reset);
input clk, reset;
// dataA : multiplicant, dataB : multiplier
input [31:0] dataA, dataB;
input [5:0] Signal;
output[63:0] dataOut;
reg[63:0] Product;

always@(Signal)
    begin
        if (Signal == MULTU) 
        begin
            Product = {32'b0, dataB};
        end
    end
    always@(posedge clk or reset)
    begin
        if(Signal == MULTU)
        
        end
    end
end
assign dataOut = Product;
endmodule