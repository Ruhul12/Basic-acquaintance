include "emu8086.inc"
.model small
.stack 100h
.code

main proc
    
    
    print "Enter the word: "
    
    mov bh,30h
    
    
    lev1:
    mov ah,1
    int 21h
    inc bh
    
    cmp al,0dh        ;comparing with enter
    je print
    jne lev1
    
    print:
    printN
    print "Total number of characters: "
    
    sub bh,1
    
    
    mov ah,2
    mov dl,bh
    int 21h
    
    exit:
    main endp