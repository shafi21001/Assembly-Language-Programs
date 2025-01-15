.model small
.stack 100h
.data  
msg db  10,13, 'ENTER THREE INITIALS: $'
n db 10,13,'$' 
.code 
main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,msg
    int 21h
    mov ah,1
    int 21h
    mov bh,al
    int 21h
    mov bl,al
    int 21h
    mov cl,al
    mov ah,9
    lea dx,n
    int 21h  
    mov ah,2
    mov dl,bh
    int 21h
    mov ah,9
    lea dx,n
    int 21h 
    mov ah,2
    mov dl,bl
    int 21h
    mov ah,9
    lea dx,n
    int 21h
    mov ah,2
    mov dl,cl
    int 21h 
    exit:
    mov ah,4ch
    int 21h
main endp
end main
