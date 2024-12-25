.model small                   ; Use small memory model
.data 
    x db "Enter a Number", "$" ; Message to display
    
.code

    MAIN PROC FAR              
        .startup               

        LEA dx, x              
        MOV AH, 09H            ;Display what in Dx 
        INT 21H                

        CALL ReadChar          ; Accept Char input  
        
        MOV DL, AL             
        MOV AH, 02H            ; Display character in DL
        INT 21H                

        .exit                  
    MAIN ENDP

    ReadChar PROC NEAR         ; Procedure to read a single character
    MOV AH, 01H                ; Read character and Saved in AL
        INT 21H                
        RET                    
    ReadChar ENDP

    END MAIN                   