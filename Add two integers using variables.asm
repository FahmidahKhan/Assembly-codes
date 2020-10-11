.MODEL SMALL
.STACK 100H 
.DATA    
   
    VAR1 DW 2 
    VAR2 DW 3
    VAR3 DW 4                           
   
.CODE     
    MAIN PROC 
                   
              
              
              MOV AX,@DATA       ;LOAD DATA SEGMENT REGISTER INTO AX REGISTER
              MOV DS, AX         ;MOVE THE CONTENT OF AX INTO DS REGISTER              
              
              MOV AX, VAR1 
              MOV BX, VAR2 
              MOV CX, VAR3
              
              ADD BX,CX           ;VAR2=VAR2+VAR3
              ADD AX,BX           ;VAR1=VAR1+VAR2
              
              
              
              
              
            
              
                MOV AH,4CH 
                INT 21H   
                MAIN ENDP
    END MAIN 
   