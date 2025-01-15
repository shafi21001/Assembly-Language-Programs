.model small
.stack 100h
.code
main proc 
    mov ah,1
    int 21h
    mov bl,al
    int 21h
 
    mov ah,1
    int 21h
    mov al,al
 
    cmp al,bl
    ja level1
 
    mov dl,bl
    int 21h
    mov dl,al
    int 21h
 
    jmp exit

level1:
    mov dl,al
    int 21h
    mov dl,bl
    int 21h

exit:
    mov ah,4ch
    int 21h

main endp
end main
