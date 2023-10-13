%include "io.inc"

section .data
vec1 dw 1, 113, 5, 8, 86, 0

section .text
global main
main:
    mov ebp, esp; for correct debugging
    
    mov bx, [vec1]
    mov ecx, 10
L1:
        mov ax, [vec1+ecx]
        cmp ax, bx
        js L3
        mov bx, ax
L3:
        
    sub ecx, 2
    CMP ecx, 0
    JNE L1
    
    PRINT_UDEC 2, bx
    
    ret