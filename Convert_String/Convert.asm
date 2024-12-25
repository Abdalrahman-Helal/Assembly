.MODEL SMALL 
.DATA
STRING DB "HELLO" , "$"
.CODE 
    MAIN PROC FAR
        .STARTUP
        MOV CX,5
        LEA SI , STRING
    A:
        ADD [SI] , 20H
        INC SI 
        LOOP A
        
        LEA DX ,STRING 
        MOV AH,09H 
        INT 21H
        
        .EXIT 
    MAIN ENDP 
END MAIN     
