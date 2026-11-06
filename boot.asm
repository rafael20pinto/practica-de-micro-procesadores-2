[bits 16]
[org 0x7c00]
start:
    mov si, linea1
    call imprimir

    mov si, linea2
    call imprimir

    jmp $

imprimir:
    mov al, [si]
    cmp al, 0
    je .fin

    mov ah,0x0e
    int 0x10
    inc si
    jmp imprimir

.fin:
    ret

linea1 db "primera linea", 0x0d,0x0a,0
linea2 db "segunda linea", 0x0d,0x0a,0

times 510-($-$$) db 0
dw 0xaa55
