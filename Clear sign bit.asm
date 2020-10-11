.MODEL SMALL
.STACK 100H  
.DATA    
                             
.CODE     
    MAIN PROC 
                    
              
           MOV AL,0F0H      
             
           AND AL,7FH
           
              
              
            
              
                MOV AH,4CH 
                INT 21H    
    MAIN ENDP
    END MAIN 
   