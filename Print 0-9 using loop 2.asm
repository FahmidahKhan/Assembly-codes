.MODEL
.STACK 100H
.DATA

   VAR1 DB '0'


.CODE
    MAIN PROC 
        
        
        MOV AX,@DATA
        MOV DS,AX 
        
        MOV CX,10
        
        
        
        
FORLOOP:    MOV    DL, VAR1
        MOV AH,2
        INT 21H
        INC VAR1
        
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H 
        
        LOOP FORLOOP
        
        
        
        RETURN:MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    END MAIN