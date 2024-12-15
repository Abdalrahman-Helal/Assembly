.MODEL SMALL
.STACK 64 

.DATA
    RANDOM_NUMBER DB ?
    RANDOM_MSG DB 0DH, 0AH, "ENTER THE RANDOM NUMBER (0-9): ", '$'
    GUESS_MSG DB 0DH, 0AH, "GUESS THE NUMBER: ",'$'
    CORRECT_MSG DB 0DH, 0AH, "CORRECT! YOU GUESSED THE NUMER!", '$'
    LOW_MSG DB 0DH, 0AH, "TOO LOW! TRY AGAIN.",'$'
    HIGH_MSG DB 0DH, 0AH, "TOO HIGH! TRY AGAIN.", '$'

.CODE
 MAIN PROC FAR
  .STARTUP
   

START:
    LEA DX, RANDOM_MSG          
    MOV AH, 09H                 
    INT 21H
                        
    MOV AH, 01H                
    INT 21H
    SUB AL, '0'                 
    MOV RANDOM_NUMBER, AL

GET_GUESS:
    LEA DX, GUESS_MSG
    MOV AH, 09H
    INT 21H
                                                                                                                                                      
    MOV AH, 01H
    INT 21H
    SUB AL, '0'

    CMP AL, RANDOM_NUMBER
    JE CORRECT
    JL TOO_LOW
    JG TOO_HIGH

CORRECT:
    LEA DX, CORRECT_MSG
    MOV AH, 09H
    INT 21H
    JMP EXIT
    

TOO_LOW:
    LEA DX, LOW_MSG
    MOV AH, 09H
    INT 21H
    JMP GET_GUESS

TOO_HIGH:
    LEA DX, HIGH_MSG
    MOV AH, 09H
    INT 21H
    JMP GET_GUESS

EXIT:   
    .EXIT  
    MAIN ENDP 
    END MAIN
     
    