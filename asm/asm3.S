.data
.text
.global main
main:
    
    mov DWORD PTR [ebp+0x8], 0xd46c9935
    mov DWORD PTR [ebp+0xc], 0xdfe28722
    mov DWORD PTR [ebp+0x10], 0xb335450f
    
    call asm3
    
    call puts
	xor	%eax, %eax
	ret


asm3:
	<+0>:	push   ebp
	<+1>:	mov    ebp,esp
	<+3>:	xor    eax,eax
	<+5>:	mov    ah,BYTE PTR [ebp+0xa]	; set ax to 0x8700
	<+8>:	shl    ax,0x10					; Do nothing I think
	<+12>:	sub    al,BYTE PTR [ebp+0xf]	; set ax to 0x8735
	<+15>:	add    ah,BYTE PTR [ebp+0xe]	; set ax to 0xcc35
	<+18>:	xor    ax,WORD PTR [ebp+0x10]	; set ax to 0xaf00
	<+22>:	nop
	<+23>:	pop    ebp
	<+24>:	ret    
