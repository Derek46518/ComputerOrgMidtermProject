`timescale 1ns/1ns
module ALUbit( dataA, dataB, binvert, cin, less, Signal, dataOut, set, cout );



    input dataA, dataB, binvert, cin, less;
    input [5:0] Signal;
    output dataOut, set, cout;
    
    wire cin;
    wire andOut, orOut, xorOut;
    
    
    and(andOut, dataA, dataB);
    or(orOut, dataA, dataB);
    xor(xorOut, binvert, dataB);
    ONEBIT_FA fa(.A(dataA), .B(xorOut), .cin(cin), .sum(set), .cout(cout));
    
    MUX4-1 mux( .sel(Signal), .andOut(andOut), .orOut(orOut), .FA(set), .SLT(less), .out(dataOut));
    
endmodule