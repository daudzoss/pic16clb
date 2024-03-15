module qelogic(i,i_r,i_f, q,q_r,q_f, d);
input i, i_r, i_f;
input q, q_r, q_f;
output d;

assign d = (i_r & q) | (i_f & ~q) | (q_r & ~i) | (q_f & i);

endmodule