.model small
.stack 100h  
.data
a db 'Hello World $'
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
    
    mov ax,'-3'
    cmp ax,0
    
    jl next
    
    mov ah,2
    mov dx,ax
    int 21h
    
    jmp exit
    
    next:
    neg ax 
    
    mov ah,2
    mov dx,ax
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    
main endp
end main