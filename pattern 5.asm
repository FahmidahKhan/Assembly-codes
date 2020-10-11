.MODEL SMALL
.STACK 100H
.DATA 

 STAR DW '*$'
 
 VAR1 DW ?
 VAR2 DW ? 
 

S DW ?
.CODE
   MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV BX,5
    
    MOV VAR1 ,1 
   
    
    OUTERLOOP:
    
    MOV CX, 1 
    
    INNERLOOP:
    MOV AH,9
    LEA DX,STAR
    INT 21H
    
    INC CX
    
    CMP CX,VAR1 
    JLE INNERLOOP
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    INC VAR1 
    CMP VAR1,BX
    JLE OUTERLOOP 
    
    SUB BX,1 
    
    MOV VAR1 ,1 
   
    
    OUTERLOOP1:
    
    MOV CX, BX 
    
    INNERLOOP1:
    MOV AH,9
    LEA DX,STAR
    INT 21H
    
    DEC CX
    
    CMP CX,VAR1 
    JGE INNERLOOP1
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    INC VAR1 
    CMP VAR1,BX
    JLE OUTERLOOP1
    
    
    
    
    
    
    
    RETURN: MOV AH,4CH
    INT 21H 
    
    MAIN ENDP
    END MAIN
    
    
    