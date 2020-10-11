.MODEL SMALL
.STACK 100H  
.DATA    
                              

.CODE      
    MAIN PROC
                    
              
           MOV AH,1     ;single key input
           INT 21H       
           MOV BL,AL    
          
              
              
            
              
                MOV AH,4CH 
                INT 21H    
    MAIN ENDP
    END MAIN 
   