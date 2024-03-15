module qe(clk,
	  /*a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,*/a3,a2,a1,a0,update,
	  i, i_r, i_f,
	  q, q_r, q_f,
	  /*y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,*/y3,y2,y1,y0,c,b);

   input clk;
   input /*a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,*/a3,a2,a1,a0,update;   
   input i, i_r, i_f;
   input q, q_r, q_f;

   output /*y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,*/y3,y2,y1,y0;
   output c,b;
   
   reg [3/*15*/:0] value;
/*   assign y15 = value[15];
   assign y14 = value[14];
   assign y13 = value[13];
   assign y12 = value[12];
   assign y11 = value[11];
   assign y10 = value[10];
   assign y9 = value[9];
   assign y8 = value[8];
   assign y7 = value[7];
   assign y6 = value[6];
   assign y5 = value[5];
   assign y4 = value[4];*/
   assign y3 = value[3];
   assign y2 = value[2];
   assign y1 = value[1];
   assign y0 = value[0];

   always @(posedge clk)
     begin
       if (update)
	 begin
/*	    value[3] = a3;
	    value[2] = a2;
	    value[1] = a1;
	    value[0] = a0;*/	    value = 4'b0;
	    c = 0;
	    b = 0;
	 end

       else
	 begin
	    if ((i_r & ~q) | (i_f & q) | (q_r & i) | (q_f & ~i))
	      begin
		 value += 1;
		 c = (~value) ? 1 : 0;
		 b = 0;
	      end
	    else
	      begin
		 value -= 1;
		 c = 0;
		 b = value ? 0 : 1;
	      end
/*
            if (i_r)
 	      value += q ? -1 : +1;
	    else if (i_f)
	      value += q ? +1 : -1;
	    else if (q_r)
	      value += i ? +1 : -1;
	    else if (q_f)
	      value += i ? -1 : +1;
*/	    
	 end // else: !if(update)
     end // always @ (posedge clk)


endmodule
