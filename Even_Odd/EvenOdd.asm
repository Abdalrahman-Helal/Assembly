.MODEL SMALL 
.DATA 
MSG DB "Enter Number : " , "$"
EVE DB 10,"Even" , "$"
ODD DB 10, "Odd" , "$"
.CODE
    MAIN PROC FAR
    .STARTUP
    LEA DX , MSG
    MOV AH ,09H 
    INT 21H 
    
    
    MOV AH , 01H  ; Ah has 01 
    INT 21H       ; input saved in AL  
    
    MOV AH , 00H  ; clear AH 
    MOV BL , 2 
    DIV BL         ; Div Ax on BL Save Value to AL and Reminder in Ah
    
    CMP AH ,0
    JNE O
    LEA DX ,EVE
    MOV AH , 09H 
    INT 21H 
    JMP STOP
    
O:
    LEA DX, ODD
    MOV AH ,09H 
    INT 21H
    
STOP:    
    .EXIT
    MAIN ENDP 
    END MAIN 