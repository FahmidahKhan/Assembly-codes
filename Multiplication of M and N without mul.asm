.MODEL SMALL
.STACK 100H  
.DATA 

MSG1 DB "ENTER M: $"
MSG2 DB "ENTER N: $"
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
            
            
            MOV AH,2
            MOV DL,0AH
            INT 21H
            MOV AH,2
            MOV DL,0DH
            INT 21H
            
            MOV AH,9
            LEA DX, MSG2
            INT 21H 
            
            MOV AH,1
            INT 21H
            MOV BH,AL
            
            
            
            SUB BH,'0' 
            SUB BL,'0'
            
            MOV CX,0
            MOV CL,BH
            
            MOV DX,0
            
            FORLOOP:
            
            ADD DL,BL
            
            INC VAR
            
            CMP VAR,CX
            JLE FORLOOP
            
            
       
              
            
              
                MOV AH,4CH ;RETURN 0
                INT 21H    ;RETURN 0
    MAIN ENDP
    END MAIN ;EXIT(0)
   