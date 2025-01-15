.model small
.stack 100h
.data
msg db 'jump concept $'  

b db 10,13, 'Assembly Language $'

c db 10,13, 'Programming $'

.code

main proc
    
    mov ax,@data
    mov ds,ax 
    
    
    mov ah,9
    lea dx,msg
    int 21h
    
    
    m:
    
     
    mov ah,9
    lea dx,b
    int 21h
    
     jmp n
     
     n:
     
      
    mov ah,9
    lea dx,c
    int 21h
    
     jmp exit
     
     
  
 
  
     exit:
     
     mov ah,4ch
     int 21h
     
    main  endp
end main
    
    
    