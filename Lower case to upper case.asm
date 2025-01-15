  .model small
  .stack 100h
  .data 
   
     a db "Enter lower case character :$"
     
     b  db 10,13,"The upper case character is :$"
     
    
  .code  
  
  main proc  
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    sub bl,32
    
    
      
    mov ah,9
    lea dx,b
    int 21h 
    
    
     
    mov ah,2
    mov dl,bl
    int 21h
     
    
   
    exit:       
     
    mov ah,4ch 
    int 21h
    main endp
  end main
  