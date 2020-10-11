.MODEL SMALL
.STACK 100H
.DATA
    X DB ?
    Y DB ?
   
    MSG1 DB  "ENTER X: $"
    MSG2 DB "ENTER Y: $" 
    MSG3 DB "INVALID INPUT$"
    
.CODE

        MAIN PROC
              MOV AX, @DATA
              MOV DS, AX
             
              MOV AH,9
              LEA DX, MSG1
              INT 21H
              
              
              MOV AH,1
              INT 21H
              SUB AL,'0'
              MOV BH,AL       ;VALUE OF X IN BH
              
              MOV AH,2
              MOV DL,0DH
              INT 21H
              MOV DL,0AH
              INT 21H
              
              MOV AH,9
              LEA DX, MSG2
              INT 21H
              
              MOV AH,1
              INT 21H
              SUB AL,'0'
              MOV BL,AL            ;VALUE OF Y IN BL
                                   
               MOV AH,2
              MOV DL,0DH
              INT 21H
              MOV DL,0AH
              INT 21H 
              
             
              
            
            CMP BL,1
            JE PRINTX
            CMP BL,2
            JE PRINTXPLUS2
            CMP BL,3
            JE PRINTXPLUSFOUR
            CMP BL,4
            JE PRINTXPLUS6
            JMP L1 
                
                
            PRINTX: MOV DL,BH
            ADD DL, '0'
            MOV  AH,2
            INT 21H 
            JMP RETURN 
            
            PRINTXPLUS2: MOV DL,BH
            ADD DL,2
            ADD DL, '0'
            MOV  AH,2
            INT 21H 
            JMP RETURN 
            
            PRINTXPLUSFOUR:MOV DL,BH
            ADD DL,4
            ADD DL, '0'
            MOV  AH,2
            INT 21H 
            JMP RETURN 
            
            PRINTXPLUS6:MOV DL,BH
            ADD DL,6
            ADD DL, '0'
            MOV  AH,2
            INT 21H 
            JMP RETURN 
            
            L1: MOV AH,9
            LEA DX,MSG3
            INT 21H
            JMP RETURN 
              
          RETURN:    MOV AH,4CH 
              INT 21H   
              
              
              MAIN ENDP  
        END MAIN
        
              