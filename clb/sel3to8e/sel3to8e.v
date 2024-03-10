module sel3to8e(s2,s1,s0,en,y7,y6,y5,y4,y3,y2,y1,y0);
    input s2,s1,s0,en;

    output y7,y6,y5,y4,y3,y2,y1,y0;

    wire [7:0] shifted;
    wire [2:0] amount;

    assign amount = {s2,s1,s0};
    assign shifted = 7'b1 << amount;

    assign y7 = en & shifted[7];
    assign y6 = en & shifted[6];
    assign y5 = en & shifted[5];
    assign y4 = en & shifted[4];
    assign y3 = en & shifted[3];
    assign y2 = en & shifted[2];
    assign y1 = en & shifted[1];
    assign y0 = en & shifted[0];
endmodule