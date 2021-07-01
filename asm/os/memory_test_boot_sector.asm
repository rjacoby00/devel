[org 0x7c00]

mov ah, 0x07 ; clear screen, set color to green
mov al, 0x00
mov bh, 0x02
mov cx, 0x00
mov dh, 0x18
mov dl, 0x4f
int 0x10
mov bh, 0x00
mov dh, 0x01
mov dl, 0x01
int 0x10
mov ah, 0x0e

mov bp, 0x8000 ; initialize stack, start at 0x8000 and work backwards toward
mov sp, bp     ; 0x7c00, pleanty of space

mov bx, helloworld
call print ; print will print the string(null terminated) that's starting address is stored in bx

mov bx, teststring1
call println

mov bx, teststring2
call println

jmp $ ; hang

print:
    pusha
start_print:
    mov al, [bx]
    cmp al, 0
    je done_print

    mov ah, 0x0e
    int 0x10

    add bx, 1
    jmp start_print
done_print:
    popa
    ret

println:
    pusha
start_println:
    mov al, [bx]
    cmp al, 0
    je done_println

    mov ah, 0x0e
    int 0x10

    add bx, 1
    jmp start_println
done_println:
    mov ax, 0x0e0A
    int 0x10
    mov al, 0x0D
    int 0x10

    popa
    ret

helloworld:
    db 'Hello, world!  This is a test of how much data this program can handle', 0

teststring1:
    db ' this is a test string following the helloworld string!', 0

teststring2:
    db 'this is on the next line from teststring1', 0

times 510-($-$$) db 0
dw 0xaa55