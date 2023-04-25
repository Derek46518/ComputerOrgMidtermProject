`timescale 1ns/1ns
module Multiplier( clk, dataA, dataB, Signal, dataOut, reset);
input clk, reset;
// dataA : multiplicant, dataB : multiplier
input [31:0] dataA, dataB;
input [5:0] Signal;
output[63:0] dataOut;
reg[63:0] Product,temp;
reg[31:0] B;
parameter MULTU=6'b011001;
always@(Signal)
    begin
        if (Signal == MULTU) 
        begin
            Product = 64'b0;
            temp = {32'b0,dataA[31:0]};
            B = {dataB[31:0]};
        end
    end
    always@(posedge clk or reset)
    begin
        if(Signal == MULTU) 
        begin
            if(B[0]) begin
                Product = temp+Product;
            end

            B = B >> 1;
            temp = temp << 1;
        end
        else
        begin
        if(reset) begin
            Product <=64'b0;
            temp <= {32'b0,dataA[31:0]};
        end
    end
end
assign dataOut = Product;
endmodule