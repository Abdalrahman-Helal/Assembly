.MODEL SMALL 
STACK 64
.DATA 
MSG1 DB "Enter any number with two digits" , "$"
MSG2 DB "you have entered" , "$"
N DB 10,13, "$"
NUM1 DB ?
NUM2 DB ?
.CODE 
    MAIN PROC FAR
        .STARTUP
            LEA DX ,MSG1 
            CALL PRINTSTR
            
            ; for new line
            LEA DX , N
            CALL PRINTSTR
             
            ; Read 2 digits
            CALL READCHAR
            MOV NUM1, AL 
            
            CALL READCHAR
            MOV NUM2, AL     
       
            ; for new line
            LEA DX , N
            CALL PRINTSTR
            
            LEA DX , MSG2
            CALL PRINTSTR
            
             ; for new line
            LEA DX , N
            CALL PRINTSTR
            
            ;print 1st digit
            MOV DL, NUM1
            CALL PRINTCHAR
            
            ;print 1st digit
            MOV DL, NUM2
            CALL PRINTCHAR
        .EXIT
    MAIN ENDP
    
    PRINTSTR PROC NEAR
            MOV AH ,09H 
            INT 21H
            RET
    PRINTSTR ENDP       
            
            
    READCHAR PROC NEAR 
            MOV AH ,01H
            INT 21H    
            RET
    READCHAR ENDP
    
    PRINTCHAR PROC NEAR
            MOV AH , 02H 
            INT 21H
            RET
    PRINTCHAR ENDP
END MAIN    