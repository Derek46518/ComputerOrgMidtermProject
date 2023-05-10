`timescale 1ns/1ns
module Multiplier( clk, dataA, dataB, Signal, dataOut, reset);
input clk, reset;
input [31:0] dataA, dataB;

input [5:0] Signal;
output[63:0] dataOut;
reg[63:0] Product,temp;
reg[31:0] B;
parameter MULTU=6'b011001;
parameter OUT = 6'b111111;



always@(posedge clk or reset )
    begin
        if (reset) 
        begin
            Product <= 64'b0;
            temp <= {32'b0,dataA};
            B <= dataB;
        end
    
        else
        begin
        case ( Signal )
  		MULTU:
		begin
            if(B[0]==1'b1) begin
                Product <= temp + Product;
            end

            B <= B >> 1;
            temp <= temp << 1;
		end
        
  		OUT:
        begin
            
        end
		
		endcase
        end
        
        
    end
assign dataOut = Product;
endmodule