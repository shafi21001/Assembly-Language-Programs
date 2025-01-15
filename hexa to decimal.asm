.model small
.stack 100h 
.data
msg1 db 10,13,'Enter a hex digit $'
msg2 db 10,13,'In decimal it is $'
msg3 db 10,13,'Do you want to do it again $'
msg4 db 10,13,'Illegal character. Enter 0-9 or A-F $'
msg5 db 10,13,'Try next time $'
                                       
.code
main proc
    mov ax,@data
    mov ds,ax
    
again:
    mov cx,0 
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    jmp go
    
go:
    cmp bl,'9'
    jg hex
    je num
    jl num
    
hex:
    cmp bl,'F'
    jg illegal
     
    mov ah,9
    lea dx,msg2
    int 21h    
    
    mov ah,2
    mov dl,49
    int 21h
    
    mov ah,2
    sub bl,17
    mov dl,bl
    int 21h
    
    jmp input
    
input:
    mov ah,9
    lea dx,msg3
    int 21h  
    
    mov ah,1
    int 21h
    mov cl,al
    
    cmp cl,'Y'
    je again 
    
    cmp cl,'y'
    je again
    
    jne exit
    
num:
    cmp bl,'0'
    jl illegal
     
    mov ah,9
    lea dx,msg2
    int 21h    
    
    mov ah,2
    mov dl,bl
    int 21h
    jmp input
  
illegal:
    inc cx
    cmp cx,3
    je illegal2

    mov ah,9
    lea dx,msg4
    int 21h 
    
    mov ah,1
    int 21h
    
    mov bl,al
    jmp go
    
illegal2:
    mov ah,9
    lea dx,msg5
    int 21h 
    jmp exit
  
exit:
    mov ah,4ch
    int 21h  
    
main endp
end main
