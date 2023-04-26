`timescale 1ns/1ns
module  MUX4to1(sel,andOut,orOut,FA,SLT,out);

//   Signal ( 6-bits)?
//   AND  : 36 100100
//   OR   : 37 100101
//   ADD  : 32 100000
//   SUB  : 34 100010
//   SLT  : 42 101010
input andOut,orOut,FA,SLT;
input [5:0] sel;
output out;

assign dataOut = (sel[2]) ? ((sel[0]) ? orOut:andOut) : ((sel[3]) ? SLT:FA);

endmodule