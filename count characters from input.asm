.model small
.stack 100h
.data
.code
   main proc      
      mov bl,'0' 
           
      do:
       
       mov ah,1
         int 21h
         cmp al,13 
         je end_  
         inc bl      
         loop do
                
      end_: 
      
       mov ah,2
      
        mov dl,10
        int 21h
        mov dl,13        
       int 21h
       mov ah,2
        mov dl,bl  
        int 21h
      
   main endp
end main