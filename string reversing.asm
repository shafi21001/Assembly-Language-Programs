.model small
.stack 100h
.data 
.code
msg1 db 'Enter string:$'
msg2 db 10,13,'Reverse string:$'
count DW 0
main proc
mov ax,@data
mov ds,ax
  
lea dx,msg1
mov ah,9
int 21h

xor cx,cx

mov ah,1
int 21h

input: 
     cmp al,0dh
     je end_input
     push ax
     inc cx 
     int 21h
     jmp input
     
end_input: 
         mov ah,2
         mov dx,10
         int 21h
         mov ah,2
         mov dx,13
         int 21h
         
         mov bx,50h
         xchg bx,sp
         push 20h
         xchg bx,sp
         inc count
         
loop1:

     pop dx
     xchg bx,sp
     push dx
     xchg bx,sp
     inc count
     loop loop1
     
     lea dx,msg2
     mov ah,9
     int 21h
     
     mov cx,count
     mov count,0
     push  20h
     inc count
     
reverse:

       xchg bx,sp 
       pop dx
       xchg bx,sp
       cmp dl,20h 
       
       jne skip
       
       mov ah,2
       
loop2:
     pop dx
     int 21h
     dec count
     jnz loop2
     mov dx, 20h
     
skip:
    push dx
    inc count
    loop reverse 
    
 exit:
  
    mov ah,4ch
    int 21h
    main endp
    end main