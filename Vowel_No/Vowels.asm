.MODEL SMALL 
.DATA
STRING DB "abheieeo"
VOWELS DB "aeiou"
RESULT DB 0
.CODE
    MAIN PROC FAR 
    .STARTUP
    ; Make Counter for string and Vowels
    MOV CX, 8
    MOV BX,5
    ; Load String and Vowels addresses
    LEA SI , STRING 
    LEA DI , VOWELS
    ; Compare Two Chars
    A: 
    MOV AL , [SI]
    CMP AL , [DI]
    ; Jumop if two char not equal 
    JNE B
    INC RESULT 
    JMP C 
    ;Transfer to next char in vowels
    B:
    INC DI 
    DEC BX 
    CMP BX,0 
    JNE A 
    ; Transfer to next char in String 
    ; and back Vowels beginning
    C:
    INC SI 
    MOV BX, 5
    LEA DI , VOWELS
    LOOP A 
    ; Add 30H to result to get correct ASCII 
    MOV DL , RESULT 
    ADD DL , 30H
    MOV AH, 02H
    INT 21H
    
    .EXIT
    MAIN ENDP
END MAIN 