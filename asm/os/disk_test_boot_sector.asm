[org 0x7c00]

mov bp, 0x8000
mov sp, bp

mov dh, 2
mov bx, 0x9000
call disk_load

printloop:
    mov bx, 0x9200
    mov dl, [bx]
    call print
    sub bx, 1
cmp bx, 0x9000
jne printloop

jmp $

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

print_hex:
    pusha
    mov cx, 0
hex_loop:
    cmp cx, 4
    je end
    mov ax, dx
    and ax, 0x000f
    add al, 0x30
    cmp al, 0x39
    jle step2
    add al, 7
step2:
    mov bx, HEX_OUT + 5
    sub bx, cx
    mov [bx], al
    ror dx, 4
    add cx, 1
    jmp hex_loop
end:
    mov bx, HEX_OUT
    call print
    popa
    ret


disk_load:
    pusha
    push dx
    mov ah, 0x02
    mov al, dh
    mov cl, 0x02
    mov ch, 0x00
    int 0x13
    jc disk_error
    pop dx
    cmp al, dh
    jne sector_error
    popa
    ret
disk_error:
    mov bx, DISK_ERROR
    call print
    mov dh, ah
    call print_hex
    jmp $
sector_error:
    mov bx, SECTORS_ERROR
    call print


DISK_ERROR: db "Disk read error: ", 0
SECTORS_ERROR: db "Incorrect number of sectors read", 0
HEX_OUT: db '0x0000',0

times 510-($-$$) db 0
dw 0xaa55

times 256 dw 0xdada ; sector 2 = 512 bytes
times 256 dw 0xface ; sector 3 = 512 bytes