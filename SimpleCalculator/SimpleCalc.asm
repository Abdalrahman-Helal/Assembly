
.data 
x db ?
y db ?

msg1 db 10,13,"Enter first number: $"
msg2 db 10,13, "Enter second number: $"
msg3 db 10,13, "The summation is: $"
msg4 db 10,13, "The Sub is : $"   
msg5 db 10,13, "The Mul is : $"  
msg6 db 10,13, "The Div is : $"

.code
main proc addd
    mov ax, @data
    mov ds, ax
    
    lea dx, msg1     ; to show Dos Screen 
    mov ah,9
    int 21h  
    
    mov ah,1         ; wait to enter value
    int 21h
    
    sub al,30h       ; convert from ASCII to Numerical 
    mov x, al
    
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    sub al,30h 
    mov y, al
    
    lea dx, msg3
    mov ah,9
    int 21h
    
    mov al,x
    add al,y 
    add al,30h     ; Converts numericalto to ASCII
    mov dx,ax
    
    mov ah,2
    int 21h 
    
   ;*************************************       
  
    
    lea dx, msg1     ; to show Dos Screen 
    mov ah,9
    int 21h  
    
    mov ah,1         ; wait to enter value
    int 21h
    
    sub al,30h       ; convert from ASCII to Numerical 
    mov x, al
    
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    sub al,30h 
    mov y, al
    
    lea dx, msg4
    mov ah,9
    int 21h
    
    mov al,x
    sub al,y 
    add al,30h     ; Converts numericalto to ASCII
    mov dl,al
    
    mov ah,2
    int 21h   
    
    ;***************************     
    
    
    lea dx, msg1     ; to show Dos Screen 
    mov ah,9
    int 21h  
    
    mov ah,1         ; wait to enter value
    int 21h
    
    sub al,30h       ; convert from ASCII to Numerical 
    mov x, al
    
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    sub al,30h 
    mov y, al
    
    lea dx, msg5
    mov ah,9
    int 21h
    
    mov al,x
    mul y 
    add al,30h     ; Converts numericalto to ASCII
    mov dl,al
    
    mov ah,2
    int 21h        
    
    ;************************************
    
    lea dx, msg1     ; to show Dos Screen 
    mov ah,9
    int 21h  
    
    mov ah,1         ; wait to enter value
    int 21h
    
    sub al,30h       ; convert from ASCII to Numerical 
    mov x, al
    
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    sub al,30h 
    mov y, al
    
    lea dx, msg6
    mov ah,9
    int 21h
    
    mov al,x  
    mov bl,y
    mov ah,00h
    div bl 
    add al,30h     ; Converts numericalto to ASCII
    mov dl,al
    
    mov ah,2
    int 21h                                 
                                      
    
    main endp
end main
    
    