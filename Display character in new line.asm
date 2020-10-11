.MODEL SMALL
.STACK 100H  
.DATA    
                             

.CODE     
    MAIN PROC 
                    
              
           MOV AH,2     ;single key output 
           MOV DL,'A' 
           INT 21H       
    
              
           MOV AH,2     ;carriage return
           MOV DL,0DH 
           INT 21H
           MOV DL,0AH       ;line feed
           INT 21H
            
           MOV AH,2     ;single key output
           MOV DL,'B'   
           INT 21H  
            
              
           MOV AH,4CH
           INT 21H    
           
    MAIN ENDP
    END MAIN 
 
  