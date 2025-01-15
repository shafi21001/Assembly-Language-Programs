
  .model small
  .stack 100h
  .data
  msg1 db "Enter a lower case letter:$"
  msg2 db  10,13," In upper case it is : $"
  a  db ?
  
  .code
  main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,9
    int 21h  
    
    mov ah,1
    int 21h
    
    sub al,20h
    mov a,al
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h
    mov ah,4ch
    main endp
  end main
  
    
    



