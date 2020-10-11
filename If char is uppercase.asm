.MODEL SMALL
.STACK 100H
.DATA
.CODE
   MAIN PROC
    MOV AH,1
    INT 21H
    
    MOV DL,AL
    
    CMP DL,65
    JL RETURN
    CMP DL,90
    JG RETURN
    
    
    
    
         
         MOV AH,2
         INT 21H
         
         
         
    RETURN:
          MOV AH,4CH
          INT 21H
          
             MAIN ENDP
          END MAIN
             