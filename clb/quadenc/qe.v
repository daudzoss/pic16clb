module qe(i, q, clr, /*y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,*/y3,y2,y1,y0);
   input i, q, clr;

   output /*y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,*/y3,y2,y1,y0;
   reg [3/*15*/:0] value;
/*   assign y15 = value[15];
   assign y14 = value[14];
   assign y13 = value[13];
   assign y12 = value[12];
   assign y11 = value[11];
   assign y10 = value[10];
   assign y9 = value[9];
   assign y8 = value[8];*/
   assign y7 = value[7];
   assign y6 = value[6];
   assign y5 = value[5];
   assign y4 = value[4];
   assign y3 = value[3];
   assign y2 = value[2];
   assign y1 = value[1];
   assign y0 = value[0];

   always @(posedge clr)
     value = 4/*16*/'b0;
   
   always @(posedge i)
     value = clr ? 4/*16*/'b0 : (value + (q ? -1 : +1));

   always @(negedge i)
     value = clr ? 4/*16*/'b0 : (value + (q ? +1 : -1));
     
   always @(posedge q)
     value = clr ? 4/*16*/'b0 : (value + (i ? +1 : -1));

   always @(negedge q)
     value = clr ? 4/*16*/'b0 : (value + (i ? -1 : +1));
endmodule
