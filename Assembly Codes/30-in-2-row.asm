.model small
.stack 100h
.data
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov bh,1
    
    mov bl,1
    
    lev1:
    mov ah,2
    mov dl,"*"
    int 21h
    
    inc bl
    cmp bl,15
    jle lev1
    cmp bh,2
    jl lev2
    jge exit
    
    lev2:
    inc bh
    mov bl,1
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    jmp lev1
   
    
    exit:
    main endp