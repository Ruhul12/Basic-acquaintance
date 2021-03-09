.model small
.stack 100h 
.data
m db 0ah,0dh,'Enter 1st number: $'
m1 db 0ah,0dh,'Enter 2nd number: $'
m2 db 0ah,0dh,'The sum is: $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    add al,bl
    mov ah,0
    aaa
    
    mov bx,ax
    add bh,30h
    add bl,30h
    
    mov ah,9
    lea dx,m2
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h
    
    main endp