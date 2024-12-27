.MODEL SMALL 
.DATA
.CODE 
    MAIN PROC FAR
    .STARTUP
    MOV CX , 26 
    MOV AH ,02H
    
    MOV DL , 'A'
    MOV BL , ' '
    
    A:
     INT 21H
     INC DL 
     PUSH DX 
     MOV DL , BL
     INT 21H
     POP DX
     LOOP A 
    .EXIT
    ENDP MAIN 
END MAIN     