.MODEL SMALL
.STACK 100H  
.DATA    
                             
.CODE     
    MAIN PROC 
                    
              
           MOV AL,0FFH      
             
           XOR AL,03H
           OR  AL,30H
           AND AL,3FH
           
              
              
            
              
                MOV AH,4CH 
                INT 21H    
    MAIN ENDP
    END MAIN 
   