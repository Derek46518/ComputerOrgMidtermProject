`timescale 1ns/1ns
module  MUX4-1(sel,andOut,orOut,FA,SLT,out);

//   Signal ( 6-bits)?
//   AND  : 36 100100
//   OR   : 37 100101
//   ADD  : 32 100000
//   SUB  : 34 100010
//   SLT  : 42 101010
input andOut,orOut,FA,SLT;
input [5:0] sel;
output out;
/*
if(sel[2]) begin
if(sel[0]) assign dataOut = orOut;
else assign dataOut = andOut;
end
else begin
if(sel[3]) assign dataOut = SLT;
else assign dataOut = FA;
end
*/
assign dataOut = (sel[2]) ? ((sel[0]) ? orOut:andOut) : ((sel[3]) ? SLT:FA);

endmodule