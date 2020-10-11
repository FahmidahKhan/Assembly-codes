.MODEL SMALL
.STACK 100H  
.DATA    
      MSG DB 'HELLO WORLD!$'                       
                                      
.CODE      
    MAIN PROC 
           
           MOV AX,@DATA   ;LOAD THE DATA SEGMENT REGISTER INTO AX REGISTER
           MOV DS, AX     ;MOVE THE CONTENT OF AX INTO DS REGISTER    
              
           MOV AH,9     ; FUNCTION 9 
           LEA DX,MSG   ;LOAD OFFSET ADDRESS OF MSG STRING INTO DX REGISTER
           INT 21H       
    
          
            
              
                MOV AH,4CH 
                INT 21H    
    MAIN ENDP
    END MAIN 
   