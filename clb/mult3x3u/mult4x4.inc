mult4x4	macro	mem1,mem2,check
	local	toobig
#if (check)	
	movlw	0xf0		;
	andwf	mem1,w		;
	btfsc	STATUS,Z	;
	bra	toobig		; if ((mem1 <= 0x0f) &&
	
	movlw	0xf0		;
	andwf	mem2,2		;
	btfsc	STATUS,Z	;
	bra	toobig		;     (mem2 <= 0x0f)) {
#endif	
	swapf	mem1,w		;
	iorwf	mem2,w		;  // FSR0 must point to CLBSWINL, FSR1 to PORTC
	movwf	INDF0		;  CLBSWINL = (mem1 << 4) | mem2;
	movf	INDF1,w		;  w = (mem1&~1) * (mem2&~1) + mem1 & mem2 & 1;
	btfsc	mem1,0		;  if (mem1 & 1)
	addwf	mem2,w		;   w += mem2;
	btfsc	mem2,0		;  if (mem2 & 1)
	addwf	mem1,w		;   w += mem1;
toobig
	endm			; } // firm 8 instruction cycles, no clobbering

oldmult	macro	mem1,mem2,check
	local	toobig
#if (check)	
	movlw	0xf0		;
	andwf	mem1,w		;
	btfsc	STATUS,Z	;
	bra	toobig		; if ((mem1 <= 0x0f) &&
	
	movlw	0xf0		;
	andwf	mem2,2		;
	btfsc	STATUS,Z	;
	bra	toobig		;     (mem2 <= 0x0f)) {
#endif	
	movlw	0		;  w = 0;
	btfsc	mem2,0		;  if (mem2 & 1)
	movf	mem1,w		;   w += mem1;
	
	rlf	mem1,f		;
	btfsc	mem2,1		;  if (mem2 & 2)
	addwf	mem1,w		;   w += mem1 * 2;

	rlf	mem1,f		;
	btfsc	mem2,2		;  if (mem2 & 4);
	addwf	mem1,w		;   w += mem1 * 4;

	rlf	mem1,f		;
	btfsc	mem2,2		;  if (mem2 & 8);
	addwf	mem1,w		;   w += mem1 * 8;

	rlf	mem1,f		;
	swapf	mem1,f		;
toobig
	endm			; } // firm 14 instruction cycles, no clobbering
