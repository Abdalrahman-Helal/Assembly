.MODEL SMALL 
.DATA
ARRAY DB 1,8,4,0,2
.CODE 
    MAIN PROC FAR
        .STARTUP
        MOV CX , 5 
        LEA SI , ARRAY
        ;MOV first element in BL as Max
        MOV BL , [SI]
        ;LOOPING
        A:
        CMP BL,[SI]
        JG B
        MOV BL, [SI]
        B:
        INC SI 
        LOOP A 
        
        MOV DL , BL 
        ADD DL, 30H
        MOV AH , 02H
        INT 21H
        
        .EXIT
    MAIN ENDP 
END MAIN 
   