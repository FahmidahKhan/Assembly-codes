.MODEL SMALL
.STACK 100H  
.DATA    
                          
.CODE    
    MAIN PROC  
        
           MOV AH,1    ;Single key input
           INT 21H      
           MOV BL,AL    
          
            
            MOV AH,2      ;Single key output
            MOV DL,BL     
            INT 21H      
            
              
                MOV AH,4CH
                INT 21H    
    MAIN ENDP
    END MAIN 
   