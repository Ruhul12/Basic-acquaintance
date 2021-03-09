.model small
.stack 100h
.data
m db 0ah,0dh,"Enter 1st number: $"
m1 db 0ah,0dh,"Enter 2nd number: $"
m2 db 0ah,0dh,"Enter 3rd number: $"
m3 db 0ah,0dh,"The smallest number: $"

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,m2
    int 21h
    
    mov ah,1
    int 21h
    mov ch,al
    
    cmp bh,bl
    jl lev1
    jg lev2
    jmp exit
    
    lev1:
    cmp bh,ch
    jl print1
    jg print3
    jmp exit
    
    lev2:
    cmp bl,ch
    jl print2
    jg print3
    jmp exit
    
    print1:
    mov ah,9
    lea dx,m3
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    print2:
    mov ah,9
    lea dx,m3
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
     
    print3:
    mov ah,9
    lea dx,m3
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    exit:
    main endp