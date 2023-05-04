`timescale 1ns/1ns
module MUX( ALUOut, HiOut, LoOut, Shifter, Signal, dataOut );
input [31:0] ALUOut ;
input [31:0] HiOut ;
input [31:0] LoOut ;
input [31:0] Shifter ;
input [5:0] Signal ;
output [31:0] dataOut ;
reg [31:0] temp ;
parameter AND = 6'b100100; //ALU
parameter OR  = 6'b100101; //ALU
parameter ADD = 6'b100000; //ALU
parameter SUB = 6'b100010; //ALU
parameter SLT = 6'b101010; //ALU
parameter SRL = 6'b000010; // SHIFTER
parameter MFHI = 6'b010000; // HiOut
parameter MFLO = 6'b010010; 
assign dataOut = (Signal[5]) ?  ALUOut : ((Signal[4]) ? (Signal[1]) ? LoOut : HiOut : Shifter);



endmodule