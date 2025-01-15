.model small
.stack 100h   
.data
a db 'Nusrat Jahan Bindu $'
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
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    int 21h
    mov cl,al 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    cmp bl,cl
    jl next
    
    mov dl,cl
    int 21h
    mov dl,bl
    int 21h
    jmp exit
    
    next:
    mov dl,bl
    int 21h
    mov dl,cl 
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
main endp
end main