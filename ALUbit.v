module ALUbit( A, B, binvert, cin, less, signal, out, set, cout );


    input A, B, binvert, cin, less;
    input [5:0] signal;
    output out, set, cout;
    
    wire cin;
    wire andOut, orOut, xorOut;
    
    
    and(andOut, A, B);
    or(orOut, A, B);
    xor(xorOut, binvert, B);
    one_bit_FA fa(set, cout, A, xorOut, cin);
    MUX4_1 mux4to1(out, signal, andOut, orOut, set, less);
    
endmodule