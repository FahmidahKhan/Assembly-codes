
.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "The calculator$"
MSG2 DB "Enter the first number: $"
MSG3 DB "Enter the second number: $"
MSG4 DB "Enter operation: $"
MSG5 DB "Exit$"
 
NUMBER1 DW ?
NUMBER2 DW ?
NUM2 DB ?
OPERATION DW ?
TOTAL DW  ? 
TEMP DB ?
.CODE
   MAIN PROC
    MOV AX,@DATA
    MOV DS, AX 
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H 
    
RESET:    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    
   
    CALL INPUT
    
    MOV BX,0
    MOV BX, TOTAL
            
    MOV NUMBER1,BX
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    
    CALL INPUT
    
    MOV BX,0
    MOV BX, TOTAL
    
    MOV NUMBER2,BX
    MOV NUM2,BL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
 OPERATIONS:   
    
    MOV AH,9
    LEA DX,MSG4
    INT 21H
    
     MOV AH,1
     INT 21H
     MOV TEMP,AL
     
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AL,TEMP
    
     CMP AL,2AH
     JE MULTIPLY
     CMP AL,2BH
     JE ADDITION
     CMP AL,2DH
     JE SUBTRACTION
     CMP AL,2FH
     JE DIVISION
     CMP AL,114
     JE RESET
     CMP AL,101
     JE  EXIT
     
      
      MULTIPLY:
      
       MOV AX,0 
      MOV AX,NUMBER1
       
       MUL NUMBER2
       CALL OUTPUT 
       
       MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
       
       JMP OPERATIONS
       
        
    ADDITION:
       
       MOV AX,0 
      MOV AX,NUMBER1      
       
       ADD  AX,NUMBER2
       CALL OUTPUT
       
        MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
       
       JMP OPERATIONS
       
    SUBTRACTION:
    
    MOV AX,0 
      MOV AX,NUMBER1
      
      SUB AX, NUMBER2
      CALL OUTPUT
      
       MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      
      JMP OPERATIONS
    
    DIVISION:
    
    MOV AX,0 
    MOV BX,0
    
    MOV AX,NUMBER1 
    
    
    DIV NUM2
    
    CALL OUTPUT
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    JMP OPERATIONS
    
    
EXIT:    MOV AH,4CH
    INT 21H

    MAIN ENDP


    

    INPUT PROC 
        
        MOV TOTAL,0
          MOV AX,0
          MOV BX,0
          MOV CX,0 
         SCANF:
          
                    MOV DX,10
                    MOV AH,1
                    INT 21H 
                    CMP AL,0DH
                    JE  RETURN 
                    INC CX
                    SUB AL,'0'
                    MOV AH,0
                    MOV BL,AL
                    MOV AX,TOTAL 
                    MUL DX
                    ADD AX,BX 
                    MOV TOTAL,AX
                    JMP SCANF

             RETURN: RET
                    INPUT ENDP 


      

      OUTPUT PROC
        MOV CX, 0 
        MOV DX,0
        MOV BX,0       
        
    
         LOOP:
         MOV BL,10
         DIV BL      
         MOV DL,AH
         PUSH DX
         MOV AH,0 
         INC CX
         CMP AL,0
         JE PRINT
         JMP LOOP

         PRINT:
         POP DX
         ADD DL,'0'
         MOV AH,2 
         INT 21H
         DEC CX
         CMP CX,0
         JNE PRINT 


         

             RET
         OUTPUT ENDP