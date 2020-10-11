.MODEL SMALL
.STACK 100H
.DATA
.CODE

     MAIN PROC
        MOV CX,0
        INPUT:
        MOV AH,1
        INT 21H
        MOV AH,AL
        PUSH AX 
        INC CX
        
        CMP AL,13
        JNE INPUT
        
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H
        
        PRINT:
        POP DX
        INT 21H
        LOOP PRINT
        
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP
        END MAIN
                    
    