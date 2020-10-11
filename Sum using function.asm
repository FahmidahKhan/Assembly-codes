.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DW 'ENTER X: $'
MSG2 DW 'ENTER Y: $'
MSG3 DW 'SUM: $'
X DB ?
Y DB ? 
S DB ?
.CODE
   MAIN PROC
    
    MOV AX,@DATA
    MOV DS, AX
     
    MOV AH,9 
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,'0'
    MOV X,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,9 
    LEA DX,MSG2
    INT 21H 
    
    MOV AH,1
    INT 21H 
    SUB AL,'0'
    MOV Y,AL 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H 
    
    
    
    
    
        CALL SUM 
        
        
        
        MOV AH,9 
    LEA DX,MSG3
    INT 21H  
    
    MOV AH,2
    MOV DL,S
    INT 21H
    
       
          MOV AH,4CH
          INT 21H
          
             MAIN ENDP
         
    
    
    
    
    SUM PROC   
        
        MOV CH,X
        ADD CH,Y
        
        MOV S,CH
        
        ADD S,'0'
        
        RET 
        
        SUM ENDP
                 