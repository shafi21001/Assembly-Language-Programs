.model small
.stack 100h 
.data
a db 'Enter a number $'
b db 10,13,'$'
main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,a
    int 21h
    
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'0'
    je zero
    jl negative
    jg positive
    
    zero:
    mov ah,2
    mov dl,'0'
    int 21h
    jmp exit
    
    negative:
    mov ah,2
    mov dx,'-1'
    int 21h
    jmp exit 
    
    positive:
    mov ah,2
    mov dl,'1'
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
main endp
end main