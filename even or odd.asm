.model small
.stack 100h
.data
a db 'Enter a digit$'
b db 10,13,'$'
.code
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
    
    cmp bl,'1'
    je odd
    cmp bl,'3'
    je odd
    cmp bl,'2'
    je even
    cmp bl,'4'
    je even
    
odd:
    mov ah,2
    mov dl,'o'
    int 21h
    jmp exit
    
even:
    mov ah,2
    mov dl,'e'
    int 21h
    
exit:
    mov ah,4ch
    int 21h
main endp
end main
