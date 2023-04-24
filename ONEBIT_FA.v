`timescale 1ns/1ns
module ONEBIT_FA(A,B,cin,sum,out);
input A,B,cin;
output sum,out;
wire wire1,wire2,wire3,wire4;
xor(wire1,A,B);
xor(sum,cin,wire1);
or(wire2,A,B);
and(wire3,wire2,cin);
and(wire4,A,B);
or(cout,wire3,wire4);
endmodule