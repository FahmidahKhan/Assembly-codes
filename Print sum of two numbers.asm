.MODEL SMALL
.STACK 100H
.DATA

    MSG1 DB "ENTER THE FIRST NUMBER: $" 
    MSG2 DB "ENTER THE SECOND NUMBER: $"
    MSG3 DB "SUM: $"

.CODE

    MAIN PROC 
        
        MOV AX,@DATA ;THE ADDRESS OF DATA SEGMENT IS LOADED TO AX REGISTER
        MOV DS,AX    ; THE CONTENTS OF AX REGISTER IS MOVED TO DATA SEGMENT REGISTER
        
        MOV AH,09H   ;PRINT MSG1
        LEA DX,MSG1  
        INT 21H      
        
        MOV AH,1     ;INPUT FIRST NUMBER
        INT 21H      
        MOV CH,AL    
                 
        SUB CH,'0'   ;ASCII TO DECIMAL       
                 
        MOV AH,2     
        MOV DL,0DH   ;CARRIAGE RETURN
        INT 21H      
        MOV DL,0AH   ;LINE FEED
        INT 21H      
        
        MOV AH,09H   ;PRINT MSG2
        LEA DX, MSG2 
        INT 21H      
        
        MOV AH,1     ;INPUT SECOND NUMBER
        INT 21H      
        MOV CL,AL    
        
        SUB CL, '0'  ;ASCII TO DECIMAL
        ADD CL,CH    ;ADD TWO NUMBERS
        ADD CL,'0'   ;DECIMAL TO ASCII
        
        MOV AH,2     
        MOV DL,0DH   ;CARRIAGE RETURN
        INT 21H      
        MOV DL,0AH   ;LINE FEED
        INT 21H      
        
        MOV AH,9     
        LEA DX, MSG3 ;PRINT MSG3
        INT 21H      
        
        
        MOV AH,2     ;OUTPUT SUM OF TWO NUMBERS
        MOV DL, CL   
        INT 21H      
    MAIN ENDP
 END MAIN