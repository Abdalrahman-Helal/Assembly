.MODEL SMALL 
.STACK 64 
.DATA 
NUM DW ?
TEN DW 10
LINE DB 0DH ,0AH, '$'
.CODE 
    MAIN PROC FAR 
        .STARTUP
            MOV NUM , 0
            MOV CX ,0
            
            DO: 
            
            MOV AX, NUM     ;12
            B:                                      ;1               2
            MOV DX ,00
            DIV TEN       ;(DX AX / TEN(10))  -> RESULT(AX) , REMINDER(DX)
            PUSH DX         ;2
            INC  CX       
            CMP AX , 0
            JNE B 
            
            A:
            POP DX
            CALL PRINTNUM
            LOOP A 
            INC NUM
            CALL NEW_LINE
            CMP NUM , 100
            JBE DO
            
        .EXIT
    MAIN ENDP
    PRINTNUM PROC NEAR
            MOV AH ,02H 
            ADD DL ,30H
            INT 21H
            RET
            
    NEW_LINE PROC NEAR
            LEA DX , LINE
            MOV AH ,09H
            INT 21H
            RET
            
        
END MAIN     
        