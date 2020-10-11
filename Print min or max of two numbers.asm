.MODEL SMALL
.STACK 100H
.DATA
    X DB ?
    Y DB ?
    C DB ? 
    MSG1 DB  "ENTER X: $"
    MSG2 DB "ENTER Y: $"
    MSG3 DB "ENTER C: $"
    MSG4 DB "THE MINIMUM NUMBER IS: $"
    MSG5 DB "THE MAXIMUM NUMBER IS:$"
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
              MOV BH,AL  
              
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
              MOV BL,AL
              
               MOV AH,2
              MOV DL,0DH
              INT 21H
              MOV DL,0AH
              INT 21H 
              
              MOV AH,9
              LEA DX, MSG3
              INT 21H
              
              MOV AH,1
              INT 21H 
              SUB AL,'0'
              MOV C, AL
              
              CMP C,0
              JE MIN
              CMP C,1
              JE MAX
              JMP RETURN 
              
              
            
              
           MIN:MOV AH,2
              MOV DL,0DH
              INT 21H
              MOV DL,0AH
              INT 21H
              
              MOV AH,9
              LEA DX, MSG4
              INT 21H
               
                CMP BH,BL
                JL PRINT
                JMP L1
                
                
           MAX:MOV AH,2
              MOV DL,0DH
              INT 21H
              MOV DL,0AH
              INT 21H
              
              MOV AH,9
              LEA DX, MSG5
              INT 21H 
           CMP BH,BL
           JG PRINT
           JMP  L1
              
              
              
            PRINT: MOV DL,BH
            ADD DL, '0'
            MOV  AH,2
            INT 21H 
            JMP RETURN    
            
            
            L1:MOV DL,BL
            ADD DL, '0'
            MOV AH,2 
            INT 21H
             JMP RETURN
              
            
              
          RETURN:    MOV AH,4CH 
              INT 21H   
              
              
              MAIN ENDP  
        END MAIN
        
              