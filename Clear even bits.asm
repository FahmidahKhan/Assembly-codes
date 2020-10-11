.MODEL SMALL
.STACK 100H
.DATA
.CODE
   MAIN PROC
          ;LSB IS 0TH BIT 
    
    MOV AX,14H
    AND AX,0AAh
    
    
       
          MOV AH,4CH
          INT 21H
          
             MAIN ENDP
          END MAIN
             