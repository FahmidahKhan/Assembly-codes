 .MODEL SMALL
.STACK 100H  ;STACK SEGMENT
.DATA    
                                      

.CODE      ;CODE SEGMENT
    MAIN PROC ;INT MAIN()
          
              
              
           MOV AH,1     ;SINGLE KEY INPUT        
           INT 21H      ;EXECUTE 
           MOV BL,AL    ;input 'A' is taken whose ascii code is 65
           
           ADD BL, 32    ;ADD 65+32 IN DECIMAL (ASCII)
           
          
           MOV AH,2 
           MOV DL,0DH    ;CARRIAGE RETURNS
           INT 21H
           MOV DL,0AH     ;LINE FEED
           INT 21H 
           
          
           
           MOV AH,2
           MOV DL, BL     ;SINGLE KEY OUTPUT
           INT 21H        ;OUTPUT IS 'a' ASCII=97
              
                MOV AH,4CH ;RETURN 0
                INT 21H    ;RETURN 0 
                
    MAIN ENDP
    END MAIN ;EXIT(0)
   