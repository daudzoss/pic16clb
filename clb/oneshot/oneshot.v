//github.com/microchip-pic-avr-examples/pic16f13145-clb-dice-mplab-mcc/tree/main
// "The one shot...emits a pulse when the debouncer output in the previous clock
// cycle is not equal to current output of the debouncer, and the current signal
// is 1... Then, the one-shot generates a pulse that causes the JK Flip-Flop to
// toggle on the next clock cycle.  At this point, the one-shot output will
// become 0 as the previous and current values match."
  
module oneshot(CLK, d, q);
   input CLK;
// "The CLB has a single global clock, the ‘CLK’ port, in all Verilog modules."
   input d;
   output q;

   logic  nq1, jk, q2;
   
   // the AND gate of d with the inverse of its FF #1 snapshot...
   assign jk = nq1 & d;
   always @(posedge CLK)
     begin
	nq1 <= ~d;
     end

   // ...determines whether to invert the initial state in FF #2
   assign q = q2;
   always @(posedge CLK)
     begin
	if (jk)
	  begin
	     q2 <= ~q2;
	  end
     end
endmodule // oneshot
