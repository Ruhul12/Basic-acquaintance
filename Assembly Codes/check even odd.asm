.model small
.stack 100h
.data
m db 0ah,0dh,'Enter the number: $'
m1 db 0ah,0dh,'The number is even $'
m2 db 0ah,0dh,'The number is odd $'
.code

main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah, 9
    lea dx,m
    int 21h 
    
    mov ah, 1
    int 21h
    
    mov bl,2
    div bl
    
    mov al,ah
    cmp al,0
    jg print1
    
    print2:
    mov ah, 9
    lea dx,m1
    int 21h
    jmp exit
    
    
    print1:
    mov ah, 9
    lea dx,m2
    int 21h
    
    
    
    exit:
    main endp
