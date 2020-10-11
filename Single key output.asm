.MODEL SMALL
.STACK 100H 
.DATA    
                             
.CODE      
    MAIN PROC 
                    
              
           MOV AH,2     ;single key output  
           MOV DL,'A'  
           INT 21H      
    
              
              
            
              
                MOV AH,4CH 
                INT 21H    
    MAIN ENDP
    END MAIN 
   