.MODEL
.STACK 100H
.DATA

   STAR DW '*$' 
   VAR1 DW ?
   VAR2 DW ?

.CODE
    MAIN PROC 
        
        
        MOV AX,@DATA
        MOV DS,AX 
        
                           
        
        MOV BX,8
        MOV VAR1,1
             
OUTERLOOP:
        MOV VAR2,1
        
        MOV CX,BX
        INC CX
        
        SUB CX,VAR1
        


        
INNERLOOP:
            
            MOV AH, 9
            LEA DX,STAR
            INT 21H
                                    
                                    
                                    
                                    
                                    ;*****
                                    ;****
            INC VAR2                ;***
                                    ;**
            CMP VAR2,CX             ;*
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
       
        
        
        RETURN:MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    END MAIN