.MODEL
.STACK 100H
.DATA

   VAR DB 'A'

.CODE          

    MAIN PROC  
        MOV AX,@DATA
        MOV DS,AX
        
    MOV CX,1 
       
        
    FORLOOP:  
              MOV AH,2
             MOV DL, VAR
             INT 21H    
        
              INC VAR
             
             MOV AH,2
             MOV DL,0DH
             INT 21H  
             MOV AH,2
             MOV DL,0AH
             INT 21H
              
               INC CX 
               
               CMP CX,26
               
               JLE FORLOOP
              
        
        
        
       RETURN :MOV AH,2
               INT 21H
        
        
        
        MAIN ENDP
    END MAIN