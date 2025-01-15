  .model small
  .stack 100h
  .data
     
   .code
   main  proc   
    mov ah,1 
    repeat:
    
    int 21h 
    cmp al,' '
    jne repeat
    mov ah,4ch         
    int 21h  
   
    main endp   
   end  main


