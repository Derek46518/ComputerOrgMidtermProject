`timescale 1ns/1ns
module Shifter( dataA, dataB, Signal, dataOut, reset );
input reset ;
input [31:0] dataA ;
input [31:0] dataB ;
input [5:0] Signal ;
output [31:0] dataOut ;


reg [31:0] temp0, temp1, temp2, temp3, temp4 ;

parameter SRL = 6'b000010;

assign temp0 = (dataB[0]) ? {1'b0,dataA[31:1]} : dataA;
assign temp1 = (dataB[1]) ? {2'b0,temp0[31:2]} : temp0;
assign temp2 = (dataB[2]) ? {4'b0,temp1[31:4]} : temp1;
assign temp3 = (dataB[3]) ? {8'b0,temp2[31:8]} : temp2;
assign temp4 = (dataB[4]) ? {16'b0,temp3[31:16]} : temp3;
assign dataOut = temp4;

endmodule