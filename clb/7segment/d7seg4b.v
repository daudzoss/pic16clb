module d7seg4b(m,nw,sw,s,se,ne,n, b0,b1,b2,b3, c); // common cathode 7-segment
    input m,nw,sw,s,se,ne,n;
    input b0,b1,b2,b3;
    output c; // 0 to illuminate, 1 to extinguish

    wire lit;
    assign c = ~lit;

    always_comb
        casez ({b3,b2,b1,b0})
            4'b0000: lit =     nw | sw | s | se | ne | n; // 0
            4'b0001: lit =                   se | ne    ; // 1
            4'b0010: lit = m |      sw | s |      ne | n; // 2
            4'b0011: lit = m |           s | se | ne | n; // 3
            4'b0100: lit = m | nw |          se | ne    ; // 4
            4'b0101: lit = m | nw |      s | se |      n; // 5
            4'b0110: lit = m | nw | sw | s | se |      n; // 6
            4'b0111: lit =                   se | ne | n; // 7
            4'b1000: lit = m | nw | sw | s | se | ne | n; // 8
            4'b1001: lit = m | nw |      s | se | ne | n; // 9
            4'b1010: lit = m | nw | sw |     se | ne | n; // A
            4'b1011: lit = m | nw | sw | s | se         ; // b
            4'b1100: lit =     nw | sw | s |           n; // C
            4'b1101: lit = m |      sw | s | se | ne    ; // d
            4'b1110: lit = m | nw | sw | s |           n; // E
            4'b1111: lit = m | nw | sw |               n; // F
        endcase
endmodule