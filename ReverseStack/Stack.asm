.MODEL SMALL 
.DATA
STRING DB  "HELLO"
.CODE 
    MAIN PROC FAR 
        .STARTUP
        MOV CX , 5
        LEA SI , STRING
        
        A:
          PUSH [SI]
          INC SI
          LOOP A
          
          MOV CX ,5
          MOV AH ,02H
        B: 
          POP DX 
          INT 21H
          LOOP B
        .EXIT
    MAIN ENDP 
END MAIN 
    