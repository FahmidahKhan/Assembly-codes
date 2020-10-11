.MODEL SMALL
.STACK 100H  
.DATA    
                             
                                      

.CODE      
    MAIN PROC 
          
              
              
           MOV AH,1     ;SINGLE KEY INPUT        
           INT 21H     
           MOV BL,AL
          
           MOV AH,2 
           MOV DL,0DH    ;CARRIAGE RETURNS
           INT 21H
           MOV DL,0AH     ;LINE FEED
           INT 21H
           
           MOV AH,2
           MOV DL, BL     ;SINGLE KEY OUTPUT
           INT 21H
              
                MOV AH,4CH ;RETURN 0
                INT 21H    ;RETURN 0
    MAIN ENDP
    END MAIN ;EXIT(0)
   