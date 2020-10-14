.MODEL SMALL
.STACK 100H 
.DATA    
   
    VAR1 DW 1 
    VAR2 DW 2
    VAR3 DW 3 
    VAR4 DW 4 
    VAR5 DW 5                           
   
.CODE     
    MAIN PROC 
                   
              
              
              MOV AX,@DATA       ;LOAD DATA SEGMENT REGISTER INTO AX REGISTER
              MOV DS, AX         ;MOVE THE CONTENT OF AX INTO DS REGISTER              
              
              MOV AX, VAR1 
              ADD AX, VAR2 
              ADD AX, VAR3
              ADD AX, VAR4
              ADD AX, VAR5  
              
              MOV BL,0
              MOV BL,5
              
              DIV BL
              
              
              
              
              
            
              
                MOV AH,4CH 
                INT 21H   
                MAIN ENDP
    END MAIN 
   