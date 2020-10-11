.MODEL
.STACK 100H
.DATA

   VAR1 DB '0'


.CODE
    MAIN PROC 
        
        
        MOV AX,@DATA
        MOV DS,AX 
        
        MOV BX,10
        MOV CX,1
        
        
        
        
FORLOOP:    MOV    DL, VAR1
        MOV AH,2
        INT 21H
        INC VAR1
        
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H 
        
        INC CX
        
        CMP CX,BX
        JLE FORLOOP
        
        
        
        RETURN:MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    END MAIN