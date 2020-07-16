/*  asm2:
		<+0>:	push   ebp
		<+1>:	mov    ebp,esp
		<+3>:	sub    esp,0x10
		<+6>:	mov    eax,DWORD PTR [ebp+0xc]		; eax = 0x15 (value passed when asm(0xc, 0x15) is called)
		<+9>:	mov    DWORD PTR [ebp-0x4],eax		; var1 = 21
		<+12>:	mov    eax,DWORD PTR [ebp+0x8]		; eax = 0xc (value passed when asm(0xc, 0x15) is called)
		<+15>:	mov    DWORD PTR [ebp-0x8],eax		; var2 = 12
		<+18>:	jmp    0x50c <asm2+31>				; goto line 12
		<+20>:	add    DWORD PTR [ebp-0x4],0x1		; add one to var1
		<+24>:	add    DWORD PTR [ebp-0x8],0xaf		; add 175 to var2
		<+31>:	cmp    DWORD PTR [ebp-0x8],0xa3d3 
		<+38>:	jle    0x501 <asm2+20>				; goto line 10 if var2 < 41939
		<+40>:	mov    eax,DWORD PTR [ebp-0x4]		; return var1
		<+43>:	leave  
		<+44>:	ret    
*/

public class Test {
	public static void main(String[] args) {
		System.out.println(asm2(0xc, 0x15));
	}

	public static int asm2(int var1, int var2) {
		while (var2 <= 0xa3d3) {
			var1++;
			var2 += 0xaf;
		}
		return var1;
	}
}