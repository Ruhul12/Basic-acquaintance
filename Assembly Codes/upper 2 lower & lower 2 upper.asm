include "emu8086.inc"
.model small
.stack 100h

.code

main proc
    print "Enter The Character: "
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'A'
    jl Exit
    
    cmp bl,'Z'
    jle print1
    
    cmp bl,'a'
    jl Exit
    
    cmp bl,'z'
    jle print2
    jmp exit
    
    


    print1:
    printN
    print "'You have entered an upper case character, lower case character is: "
    mov ah,2
    add bl,32
    mov dl,bl
    int 21h
    jmp Exit
    int 21h
    
    print2:
    printN
    print "You have entered a lower case character, upper case character is: "
    
    mov ah,2
    sub bl,32
    mov dl,bl
    int 21h
    jmp Exit
    int 21h 
    
    Exit:
    main endp