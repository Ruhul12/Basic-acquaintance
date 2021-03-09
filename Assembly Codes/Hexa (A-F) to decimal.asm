include "emu8086.inc"
.model small
.stack 100h


.code

main proc
    print "Enter Hexadecimal Value (A-F): "
    
    mov ah,1
    int 21h
    mov bl,al
    
    sub bl,11h
    
    printN
    print "Decimal: "  
    
    mov ah,2
    mov dl,'1'
    int 21h
    mov dl,bl
    int 21h
    
 
    main endp