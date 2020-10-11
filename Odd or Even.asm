.MODEL SMALL
.STACK 100H  
.DATA    
                                      

.CODE     
    MAIN PROC 
               MOV AL,1
               
               
               CMP AL,1
               JE ODD
               CMP AL,3
               JE ODD
               
               
                CMP AL,2
                JE EVEN
                CMP AL,4
                JE EVEN
                JMP L4
              
           
               ODD: MOV DL, 'o'
               MOV AH,2
               INT 21H
               JMP L4
           
               EVEN: MOV DL,'e'
                     MOV AH,2
                     INT 21H
                     JMP L4
               
               
               
               
               
               L4: MOV AH,4CH 
                INT 21H   
                
    MAIN ENDP
    END MAIN 
   