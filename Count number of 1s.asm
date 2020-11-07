.MODEL SMALL
.STACK 100H  
.DATA    
      COUNTER DW ?                      
                                      
.CODE      
    MAIN PROC 
           
           MOV AX,@DATA  
           MOV DS, AX         
              
           MOV AX,0
           
           MOV CX,17 
           
           MOV BX,0FFh
           
           FORLOOP:
           
           DEC CX
           
           CMP CX,0
           JCXZ EXIT  
           
           ROL BX,1 
           
           
           
           
           JC ONE
           JNC ZERO
           JMP EXIT
           
           
           ONE: 
           
           INC COUNTER
           JMP FORLOOP
           
           
           ZERO:
           JMP FORLOOP
           
           
           EXIT:
            
                MOV DX,COUNTER
                MOV AH,4CH 
                INT 21H    
    MAIN ENDP
    END MAIN 
   