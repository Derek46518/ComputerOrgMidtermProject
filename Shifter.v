`timescale 1ns/1ns
module Shifter( dataA, dataB, Signal, dataOut, reset );
input reset ;
input [31:0] dataA ;
input [31:0] dataB ;
input [5:0] Signal ;
output [31:0] dataOut ;


wire [31:0] temp0, temp1, temp2, temp3, temp4 ;

parameter SRL = 6'b000010;

MUX2_1 m0(dataA[0],dataA[1],dataB[0],temp0[0]);
MUX2_1 m1(dataA[1],dataA[2],dataB[0],temp0[1]);
MUX2_1 m2(dataA[2],dataA[3],dataB[0],temp0[2]);
MUX2_1 m3(dataA[3],dataA[4],dataB[0],temp0[3]);
MUX2_1 m4(dataA[4],dataA[5],dataB[0],temp0[4]);
MUX2_1 m5(dataA[5],dataA[6],dataB[0],temp0[5]);
MUX2_1 m6(dataA[6],dataA[7],dataB[0],temp0[6]);
MUX2_1 m7(dataA[7],dataA[8],dataB[0],temp0[7]);
MUX2_1 m8(dataA[8],dataA[9],dataB[0],temp0[8]);
MUX2_1 m9(dataA[9],dataA[10],dataB[0],temp0[9]);
MUX2_1 m10(dataA[10],dataA[11],dataB[0],temp0[10]);
MUX2_1 m11(dataA[11],dataA[12],dataB[0],temp0[11]);
MUX2_1 m12(dataA[12],dataA[13],dataB[0],temp0[12]);
MUX2_1 m13(dataA[13],dataA[14],dataB[0],temp0[13]);
MUX2_1 m14(dataA[14],dataA[15],dataB[0],temp0[14]);
MUX2_1 m15(dataA[15],dataA[16],dataB[0],temp0[15]);
MUX2_1 m16(dataA[16],dataA[17],dataB[0],temp0[16]);
MUX2_1 m17(dataA[17],dataA[18],dataB[0],temp0[17]);
MUX2_1 m18(dataA[18],dataA[19],dataB[0],temp0[18]);
MUX2_1 m19(dataA[19],dataA[20],dataB[0],temp0[19]);
MUX2_1 m20(dataA[20],dataA[21],dataB[0],temp0[20]);
MUX2_1 m21(dataA[21],dataA[22],dataB[0],temp0[21]);
MUX2_1 m22(dataA[22],dataA[23],dataB[0],temp0[22]);
MUX2_1 m23(dataA[23],dataA[24],dataB[0],temp0[23]);
MUX2_1 m24(dataA[24],dataA[25],dataB[0],temp0[24]);
MUX2_1 m25(dataA[25],dataA[26],dataB[0],temp0[25]);
MUX2_1 m26(dataA[26],dataA[27],dataB[0],temp0[26]);
MUX2_1 m27(dataA[27],dataA[28],dataB[0],temp0[27]);
MUX2_1 m28(dataA[28],dataA[29],dataB[0],temp0[28]);
MUX2_1 m29(dataA[29],dataA[30],dataB[0],temp0[29]);
MUX2_1 m30(dataA[30],dataA[31],dataB[0],temp0[30]);
MUX2_1 m31(dataA[31],1'b0,dataB[0],temp0[31]);


MUX2_1 mm0(temp0[0],temp0[2],dataB[1],temp1[0]);
MUX2_1 mm1(temp0[1],temp0[3],dataB[1],temp1[1]);
MUX2_1 mm2(temp0[2],temp0[4],dataB[1],temp1[2]);
MUX2_1 mm3(temp0[3],temp0[5],dataB[1],temp1[3]);
MUX2_1 mm4(temp0[4],temp0[6],dataB[1],temp1[4]);
MUX2_1 mm5(temp0[5],temp0[7],dataB[1],temp1[5]);
MUX2_1 mm6(temp0[6],temp0[8],dataB[1],temp1[6]);
MUX2_1 mm7(temp0[7],temp0[9],dataB[1],temp1[7]);
MUX2_1 mm8(temp0[8],temp0[10],dataB[1],temp1[8]);
MUX2_1 mm9(temp0[9],temp0[11],dataB[1],temp1[9]);
MUX2_1 mm10(temp0[10],temp0[12],dataB[1],temp1[10]);
MUX2_1 mm11(temp0[11],temp0[13],dataB[1],temp1[11]);
MUX2_1 mm12(temp0[12],temp0[14],dataB[1],temp1[12]);
MUX2_1 mm13(temp0[13],temp0[15],dataB[1],temp1[13]);
MUX2_1 mm14(temp0[14],temp0[16],dataB[1],temp1[14]);
MUX2_1 mm15(temp0[15],temp0[17],dataB[1],temp1[15]);
MUX2_1 mm16(temp0[16],temp0[18],dataB[1],temp1[16]);
MUX2_1 mm17(temp0[17],temp0[19],dataB[1],temp1[17]);
MUX2_1 mm18(temp0[18],temp0[20],dataB[1],temp1[18]);
MUX2_1 mm19(temp0[19],temp0[21],dataB[1],temp1[19]);
MUX2_1 mm20(temp0[20],temp0[22],dataB[1],temp1[20]);
MUX2_1 mm21(temp0[21],temp0[23],dataB[1],temp1[21]);
MUX2_1 mm22(temp0[22],temp0[24],dataB[1],temp1[22]);
MUX2_1 mm23(temp0[23],temp0[25],dataB[1],temp1[23]);
MUX2_1 mm24(temp0[24],temp0[26],dataB[1],temp1[24]);
MUX2_1 mm25(temp0[25],temp0[27],dataB[1],temp1[25]);
MUX2_1 mm26(temp0[26],temp0[28],dataB[1],temp1[26]);
MUX2_1 mm27(temp0[27],temp0[29],dataB[1],temp1[27]);
MUX2_1 mm28(temp0[28],temp0[30],dataB[1],temp1[28]);
MUX2_1 mm29(temp0[29],temp0[31],dataB[1],temp1[29]);
MUX2_1 mm30(temp0[30],1'b0,dataB[1],temp1[30]);
MUX2_1 mm31(temp0[31],1'b0,dataB[1],temp1[31]);

MUX2_1 mmm0(temp1[0],temp1[4],dataB[2],temp2[0]);
MUX2_1 mmm1(temp1[1],temp1[5],dataB[2],temp2[1]);
MUX2_1 mmm2(temp1[2],temp1[6],dataB[2],temp2[2]);
MUX2_1 mmm3(temp1[3],temp1[7],dataB[2],temp2[3]);
MUX2_1 mmm4(temp1[4],temp1[8],dataB[2],temp2[4]);
MUX2_1 mmm5(temp1[5],temp1[9],dataB[2],temp2[5]);
MUX2_1 mmm6(temp1[6],temp1[10],dataB[2],temp2[6]);
MUX2_1 mmm7(temp1[7],temp1[11],dataB[2],temp2[7]);
MUX2_1 mmm8(temp1[8],temp1[12],dataB[2],temp2[8]);
MUX2_1 mmm9(temp1[9],temp1[13],dataB[2],temp2[9]);
MUX2_1 mmm10(temp1[10],temp1[14],dataB[2],temp2[10]);
MUX2_1 mmm11(temp1[11],temp1[15],dataB[2],temp2[11]);
MUX2_1 mmm12(temp1[12],temp1[16],dataB[2],temp2[12]);
MUX2_1 mmm13(temp1[13],temp1[17],dataB[2],temp2[13]);
MUX2_1 mmm14(temp1[14],temp1[18],dataB[2],temp2[14]);
MUX2_1 mmm15(temp1[15],temp1[19],dataB[2],temp2[15]);
MUX2_1 mmm16(temp1[16],temp1[20],dataB[2],temp2[16]);
MUX2_1 mmm17(temp1[17],temp1[21],dataB[2],temp2[17]);
MUX2_1 mmm18(temp1[18],temp1[22],dataB[2],temp2[18]);
MUX2_1 mmm19(temp1[19],temp1[23],dataB[2],temp2[19]);
MUX2_1 mmm20(temp1[20],temp1[24],dataB[2],temp2[20]);
MUX2_1 mmm21(temp1[21],temp1[25],dataB[2],temp2[21]);
MUX2_1 mmm22(temp1[22],temp1[26],dataB[2],temp2[22]);
MUX2_1 mmm23(temp1[23],temp1[27],dataB[2],temp2[23]);
MUX2_1 mmm24(temp1[24],temp1[28],dataB[2],temp2[24]);
MUX2_1 mmm25(temp1[25],temp1[29],dataB[2],temp2[25]);
MUX2_1 mmm26(temp1[26],temp1[30],dataB[2],temp2[26]);
MUX2_1 mmm27(temp1[27],temp1[31],dataB[2],temp2[27]);
MUX2_1 mmm28(temp1[28],1'b0,dataB[2],temp2[28]);
MUX2_1 mmm29(temp1[29],1'b0,dataB[2],temp2[29]);
MUX2_1 mmm30(temp1[30],1'b0,dataB[2],temp2[30]);
MUX2_1 mmm31(temp1[31],1'b0,dataB[2],temp2[31]);

MUX2_1 mmmm0(temp2[0],temp2[8],dataB[3],temp3[0]);
MUX2_1 mmmm1(temp2[1],temp2[9],dataB[3],temp3[1]);
MUX2_1 mmmm2(temp2[2],temp2[10],dataB[3],temp3[2]);
MUX2_1 mmmm3(temp2[3],temp2[11],dataB[3],temp3[3]);
MUX2_1 mmmm4(temp2[4],temp2[12],dataB[3],temp3[4]);
MUX2_1 mmmm5(temp2[5],temp2[13],dataB[3],temp3[5]);
MUX2_1 mmmm6(temp2[6],temp2[14],dataB[3],temp3[6]);
MUX2_1 mmmm7(temp2[7],temp2[15],dataB[3],temp3[7]);
MUX2_1 mmmm8(temp2[8],temp2[16],dataB[3],temp3[8]);
MUX2_1 mmmm9(temp2[9],temp2[17],dataB[3],temp3[9]);
MUX2_1 mmmm10(temp2[10],temp2[18],dataB[3],temp3[10]);
MUX2_1 mmmm11(temp2[11],temp2[19],dataB[3],temp3[11]);
MUX2_1 mmmm12(temp2[12],temp2[20],dataB[3],temp3[12]);
MUX2_1 mmmm13(temp2[13],temp2[21],dataB[3],temp3[13]);
MUX2_1 mmmm14(temp2[14],temp2[22],dataB[3],temp3[14]);
MUX2_1 mmmm15(temp2[15],temp2[23],dataB[3],temp3[15]);
MUX2_1 mmmm16(temp2[16],temp2[24],dataB[3],temp3[16]);
MUX2_1 mmmm17(temp2[17],temp2[25],dataB[3],temp3[17]);
MUX2_1 mmmm18(temp2[18],temp2[26],dataB[3],temp3[18]);
MUX2_1 mmmm19(temp2[19],temp2[27],dataB[3],temp3[19]);
MUX2_1 mmmm20(temp2[20],temp2[28],dataB[3],temp3[20]);
MUX2_1 mmmm21(temp2[21],temp2[29],dataB[3],temp3[21]);
MUX2_1 mmmm22(temp2[22],temp2[30],dataB[3],temp3[22]);
MUX2_1 mmmm23(temp2[23],temp2[31],dataB[3],temp3[23]);
MUX2_1 mmmm24(temp2[24],1'b0,dataB[3],temp3[24]);
MUX2_1 mmmm25(temp2[25],1'b0,dataB[3],temp3[25]);
MUX2_1 mmmm26(temp2[26],1'b0,dataB[3],temp3[26]);
MUX2_1 mmmm27(temp2[27],1'b0,dataB[3],temp3[27]);
MUX2_1 mmmm28(temp2[28],1'b0,dataB[3],temp3[28]);
MUX2_1 mmmm29(temp2[29],1'b0,dataB[3],temp3[29]);
MUX2_1 mmmm30(temp2[30],1'b0,dataB[3],temp3[30]);
MUX2_1 mmmm31(temp2[31],1'b0,dataB[3],temp3[31]);

MUX2_1 mmmmm0(temp3[0],temp3[16],dataB[3],temp4[0]);
MUX2_1 mmmmm1(temp3[1],temp3[17],dataB[3],temp4[1]);
MUX2_1 mmmmm2(temp3[2],temp3[18],dataB[3],temp4[2]);
MUX2_1 mmmmm3(temp3[3],temp3[19],dataB[3],temp4[3]);
MUX2_1 mmmmm4(temp3[4],temp3[20],dataB[3],temp4[4]);
MUX2_1 mmmmm5(temp3[5],temp3[21],dataB[3],temp4[5]);
MUX2_1 mmmmm6(temp3[6],temp3[22],dataB[3],temp4[6]);
MUX2_1 mmmmm7(temp3[7],temp3[23],dataB[3],temp4[7]);
MUX2_1 mmmmm8(temp3[8],temp3[24],dataB[3],temp4[8]);
MUX2_1 mmmmm9(temp3[9],temp3[25],dataB[3],temp4[9]);
MUX2_1 mmmmm10(temp3[10],temp3[26],dataB[3],temp4[10]);
MUX2_1 mmmmm11(temp3[11],temp3[27],dataB[3],temp4[11]);
MUX2_1 mmmmm12(temp3[12],temp3[28],dataB[3],temp4[12]);
MUX2_1 mmmmm13(temp3[13],temp3[29],dataB[3],temp4[13]);
MUX2_1 mmmmm14(temp3[14],temp3[30],dataB[3],temp4[14]);
MUX2_1 mmmmm15(temp3[15],temp3[31],dataB[3],temp4[15]);
MUX2_1 mmmmm16(temp3[16],1'b0,dataB[3],temp4[16]);
MUX2_1 mmmmm17(temp3[17],1'b0,dataB[3],temp4[17]);
MUX2_1 mmmmm18(temp3[18],1'b0,dataB[3],temp4[18]);
MUX2_1 mmmmm19(temp3[19],1'b0,dataB[3],temp4[19]);
MUX2_1 mmmmm20(temp3[20],1'b0,dataB[3],temp4[20]);
MUX2_1 mmmmm21(temp3[21],1'b0,dataB[3],temp4[21]);
MUX2_1 mmmmm22(temp3[22],1'b0,dataB[3],temp4[22]);
MUX2_1 mmmmm23(temp3[23],1'b0,dataB[3],temp4[23]);
MUX2_1 mmmmm24(temp3[24],1'b0,dataB[3],temp4[24]);
MUX2_1 mmmmm25(temp3[25],1'b0,dataB[3],temp4[25]);
MUX2_1 mmmmm26(temp3[26],1'b0,dataB[3],temp4[26]);
MUX2_1 mmmmm27(temp3[27],1'b0,dataB[3],temp4[27]);
MUX2_1 mmmmm28(temp3[28],1'b0,dataB[3],temp4[28]);
MUX2_1 mmmmm29(temp3[29],1'b0,dataB[3],temp4[29]);
MUX2_1 mmmmm30(temp3[30],1'b0,dataB[3],temp4[30]);
MUX2_1 mmmmm31(temp3[31],1'b0,dataB[3],temp4[31]);

assign dataOut = (Signal == SRL ) ? temp4 : dataOut;
endmodule