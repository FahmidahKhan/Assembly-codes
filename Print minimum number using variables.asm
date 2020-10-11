.MODEL SMALL
.STACK 100H  
.DATA    
                                      

.CODE     
    MAIN PROC 
               MOV AL,1
               MOV BL,2
               MOV CL,3
               
               
               CMP AL,BL    ;IF AL>BL
               JG LEFT
                
               CMP AL,CL          ;IF AL>CL
               JG RIGHTLEFT  
               
               MOV DL,AL
               JMP PRINT
               
               RIGHTLEFT: MOV DL,CL
               JMP PRINT
               
                
               
           LEFT:CMP BL,CL     ;IF BL>CL
           JG LEFTLEFT  
           
           MOV DL,BL
           JMP PRINT
           
           
           
           
           LEFTLEFT: MOV DL, CL
           JMP PRINT
           
            
              PRINT: ADD DL, '0'
              MOV AH,2
              INT 21H 
            
                MOV AH,4CH 
                INT 21H    
    MAIN ENDP
    END MAIN 
   