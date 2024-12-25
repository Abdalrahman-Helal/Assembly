.model small
.data 
x db ?
y db ?

msg1 db "Enter the first number: $"
msg2 db 10,13,"Enter the Second number: $"
msg3 db 10,13,"The Summtion is : $"

.code
    main proc addd 
    mov ax, @data
    mov ds , ax 
    
    lea dx ,msg1     ;print the msg 
    mov ah,09h
    int 21h 
    
    mov ah,01h      ; wait for input from user 
    int 21h
    
    sub al ,30h     ; cover the string to numeric value
    mov x , al
    
    lea dx, msg2 
    mov ah , 09h
    int 21h
    
    mov ah,01h
    int 21h
    
    sub al , 30h
    mov y ,al
    
    lea dx , msg3
    mov ah, 09h
    int 21h
    
    mov al , x 
    add al ,y 
    add al , 30h    ; convert numeric to string to print it
    
    mov dl , al    
    mov ah ,02h     ; interrupt to display one char 
    int 21h 
    
    .exit 
    main endp 
    end main 
    
    
   