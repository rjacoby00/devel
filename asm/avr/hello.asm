; hello.asm
;   blinks pin 13(LED) at 1 HZ

	ldi r16,0b00100000
    ldi r17,0b00000000
    out 0x04,r16    ; set pin 13 to output
    
Start:
	out 0x05,r17
    ldi  r18, 4
    ldi  r19, 44
    ldi  r20, 175
    ldi  r21, 21
L1: dec  r21
    brne L1
    dec  r20
    brne L1
    dec  r19
    brne L1
    dec  r18
    brne L1
    out 0x05,r16
    ldi  r18, 4
    ldi  r19, 44
    ldi  r20, 175
    ldi  r21, 21
L2: dec  r21
    brne L2
    dec  r20
    brne L2
    dec  r19
    brne L2
    dec  r18
    brne L2
	rjmp Start