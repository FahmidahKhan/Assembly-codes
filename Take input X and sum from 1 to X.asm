.MODEL SMALL
.STACK 100H  
.DATA 

MSG1 DB "ENTER X: $"
VAR DW 1   
                             
.CODE      
    MAIN PROC 
                    
            MOV AX,@DATA
            MOV DS,AX
            
            
            MOV AH,9
            LEA DX, MSG1
            INT 21H
            
            MOV AH,1
            INT 21H
            MOV BL,AL
            MOV BH,0
            
            
            SUB BL,'0'
            
            MOV CX,BX
            MOV DX,0
            
            FORLOOP:
            
            
            ADD DX,VAR
            
            INC VAR
            
            CMP VAR,CX
            JLE FORLOOP
            
            
       
              
            
              
                MOV AH,4CH ;RETURN 0
                INT 21H    ;RETURN 0
    MAIN ENDP
    END MAIN ;EXIT(0)
   