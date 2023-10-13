%include "io.inc"

section .data
vec1 dw 1, 113, 5, 8, 86, 0
vec2 dw 2, 3, 6, 7, 12, 54
memory dd 0

section .text
global main
main:
    mov ebp, esp; for correct debugging

    mov ecx, 10
    L1:
        
        mov ax, [vec1+ecx]
        mov bx, [vec2+ecx]
        
        mul bx
        
        add [memory+2], dx
        add [memory], ax
        

        
    
    sub ecx, 2
    CMP ecx, -1
    jns L1
    
    PRINT_UDEC 4, [memory]
    NEWLINE;
    
    
    mov bx, [vec1]
    mov ecx, 10
L2:
        mov ax, [vec1+ecx]
        cmp ax, bx
        js L3
        mov bx, ax
L3:
        
    sub ecx, 2
    CMP ecx, 0
    JNE L2
    
    PRINT_UDEC 2, bx
    
    ret