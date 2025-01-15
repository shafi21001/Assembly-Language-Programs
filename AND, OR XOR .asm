.model small
.stack 100h
.data      
 a db 10,13, 'For AND :$'
 b db 10,13, 'for OR : $'
 c db 10,13, 'for XOR : $' 
.code
main proc
  mov ax,@data
  mov ds,ax
  
  mov ah,9
  lea dx,a
  int 21h
  
  mov bl,101b
  and bl,111b
  
  add bl,30h
  
  mov ah,2
  mov dl,bl
  int 21h
  
  level_or:
  
  mov ah,9
  lea dx,b
  int 21h
  
  mov bl,101b
  or bl,111b
  
  add bl,30h
  
  mov ah,2
  mov dl,bl
  int 21h 
  
  
  level_xor: 
  
  mov ah,9
  lea dx,c
  int 21h
  
  mov bl,101b
  xor bl,111b
  
  add bl,30h
  
  mov ah,2
  mov dl,bl
  int 21h
  
  exit:
  mov ah,4ch
  int 21h
  main endp
end main
