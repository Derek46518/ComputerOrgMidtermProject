`timescale 1ns/1ns
module ALU( dataA, dataB, Signal, dataOut, reset );
input reset ;
input [31:0] dataA ;
input [31:0] dataB ;
input [5:0] Signal ;
output [31:0] dataOut ;
wire cin;
wire [31:0] cout;

//   Signal ( 6-bits)?
//   AND  : 36 100100
//   OR   : 37 100101
//   ADD  : 32 100000
//   SUB  : 34 100010
//   SLT  : 42 101010
parameter AND = 6'b100100;
parameter OR  = 6'b100101;
parameter ADD = 6'b100000;
parameter SUB = 6'b100010;
parameter SLT = 6'b101010;
reg [31:0] temp ;

parameter AND = 6'b100100;
parameter OR  = 6'b100101;
parameter ADD = 6'b100000;
parameter SUB = 6'b100010;
parameter SLT = 6'b101010;

assign cin = (Signal==SUB) ? 1:0;
assign binvert = (Signal[1]==1'b1) ? 1:0;
ALUbit alu0(.dataA(dataA[0]),.dataB(dataB[0]),.binvert(binvert),.cin(cin),.less(set),.Signal(Signal),.dataOut(dataOut[0]),.set(),cout(cout[0]));
ALUbit alu1(.dataA(dataA[1]),.dataB(dataB[1]),.binvert(binvert),.cin(cout[0]),.less(1'b0),.Signal(Signal),.dataOut(dataOut[1]),.set(),cout(cout[1]));
ALUbit alu2(.dataA(dataA[2]), .dataB(dataB[2]), .binvert(binvert), .cin(cout[1]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[2]), .set(), cout(cout[2]));
ALUbit alu3(.dataA(dataA[3]), .dataB(dataB[3]), .binvert(binvert), .cin(cout[2]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[3]), .set(), cout(cout[3]));
ALUbit alu4(.dataA(dataA[4]), .dataB(dataB[4]), .binvert(binvert), .cin(cout[3]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[4]), .set(), cout(cout[4]));
ALUbit alu5(.dataA(dataA[5]), .dataB(dataB[5]), .binvert(binvert), .cin(cout[4]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[5]), .set(), cout(cout[5]));
ALUbit alu6(.dataA(dataA[6]), .dataB(dataB[6]), .binvert(binvert), .cin(cout[5]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[6]), .set(), cout(cout[6]));
ALUbit alu7(.dataA(dataA[7]), .dataB(dataB[7]), .binvert(binvert), .cin(cout[6]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[7]), .set(), cout(cout[7]));
ALUbit alu8(.dataA(dataA[8]), .dataB(dataB[8]), .binvert(binvert), .cin(cout[7]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[8]), .set(), cout(cout[8]));
ALUbit alu9(.dataA(dataA[9]), .dataB(dataB[9]), .binvert(binvert), .cin(cout[8]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[9]), .set()), cout(cout[9]));
ALUbit alu10(.dataA(dataA[10]), .dataB(dataB[10]), .binvert(binvert), .cin(cout[9]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[10]), .set(), cout(cout[10]));
ALUbit alu11(.dataA(dataA[11]), .dataB(dataB[11]), .binvert(binvert), .cin(cout[10]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[11]), .set(), cout(cout[11]));
ALUbit alu12(.dataA(dataA[12]), .dataB(dataB[12]), .binvert(binvert), .cin(cout[11]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[12]), .set(), cout(cout[12]));
ALUbit alu13(.dataA(dataA[13]), .dataB(dataB[13]), .binvert(binvert), .cin(cout[12]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[13]), .set(), cout(cout[13]));
ALUbit alu14(.dataA(dataA[14]), .dataB(dataB[14]), .binvert(binvert), .cin(cout[13]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[14]), .set(), cout(cout[14]));
ALUbit alu15(.dataA(dataA[15]), .dataB(dataB[15]), .binvert(binvert), .cin(cout[14]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[15]), .set(), cout(cout[15]));
ALUbit alu16(.dataA(dataA[16]), .dataB(dataB[16]), .binvert(binvert), .cin(cout[15]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[16]), .set(), cout(cout[16]));
ALUbit alu17(.dataA(dataA[17]), .dataB(dataB[17]), .binvert(binvert), .cin(cout[16]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[17]), .set(), cout(cout[17]));
ALUbit alu18(.dataA(dataA[18]), .dataB(dataB[18]), .binvert(binvert), .cin(cout[17]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[18]), .set(), cout(cout[18]));
ALUbit alu19(.dataA(dataA[19]), .dataB(dataB[19]), .binvert(binvert), .cin(cout[18]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[19]), .set(), cout(cout[19]));
ALUbit alu20(.dataA(dataA[20]), .dataB(dataB[20]), .binvert(binvert), .cin(cout[19]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[20]), .set(), cout(cout[20]));
ALUbit alu21(.dataA(dataA[21]), .dataB(dataB[21]), .binvert(binvert), .cin(cout[20]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[21]), .set(), cout(cout[21]));
ALUbit alu22(.dataA(dataA[22]), .dataB(dataB[22]), .binvert(binvert), .cin(cout[21]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[22]), .set(), cout(cout[22]));
ALUbit alu23(.dataA(dataA[23]), .dataB(dataB[23]), .binvert(binvert), .cin(cout[22]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[23]), .set(), cout(cout[23]));
ALUbit alu24(.dataA(dataA[24]), .dataB(dataB[24]), .binvert(binvert), .cin(cout[23]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[24]), .set(), cout(cout[24]));
ALUbit alu25(.dataA(dataA[25]), .dataB(dataB[25]), .binvert(binvert), .cin(cout[24]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[25]), .set(), cout(cout[25]));
ALUbit alu26(.dataA(dataA[26]), .dataB(dataB[26]), .binvert(binvert), .cin(cout[25]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[26]), .set(), cout(cout[26]));
ALUbit alu27(.dataA(dataA[27]), .dataB(dataB[27]), .binvert(binvert), .cin(cout[26]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[27]), .set(), cout(cout[27]));
ALUbit alu28(.dataA(dataA[28]), .dataB(dataB[28]), .binvert(binvert), .cin(cout[27]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[28]), .set(), cout(cout[28]));
ALUbit alu29(.dataA(dataA[29]), .dataB(dataB[29]), .binvert(binvert), .cin(cout[28]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[29]), .set(), cout(cout[29]));
ALUbit alu30(.dataA(dataA[30]), .dataB(dataB[30]), .binvert(binvert), .cin(cout[29]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[30]), .set(), cout(cout[30]));
ALUbit alu31(.dataA(dataA[31]), .dataB(dataB[31]), .binvert(binvert), .cin(cout[30]), .less(1'b0), .Signal(Signal), .dataOut(dataOut[31]), .set(set), cout(cout[31]));

endmodule