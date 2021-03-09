.model small
.stack 100h
.data
m1 db "Enter 1st number:$"
m2 db 0ah,0dh,"Enter 2nd number:$"
m3 db 0ah,0dh,"Enter your choice(M for multiplication, D for division):$"
m4 db 0ah,0dh,"Wrong input,Try again"
m5 db 0ah,0dh,"Multiplication:$"
m6 db 0ah,0dh,"Division result:$"
num1 db ?
num2 db ?
choice db ?

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h
    mov num1,al
    
    mov ah,9
    lea dx,m2
    int 21h
    
    mov ah,1
    int 21h
    mov num2,al
    
    mov ah,9
    lea dx,m3
    int 21h
    
    mov ah,1
    int 21h
    mov choice,al
    
    cmp choice,"M"
    je multi
    cmp choice,"D"
    je divi
    
    mov ah,9
    lea dx,m4
    int 21h
    
    jmp exit
    
    multi:
    mov al,num1
    sub al,30h
    mov bl,num2
    sub bl,30h
    
    mul bl
    
    mov bx,ax
    add bx,30h
    
    mov ah,9
    lea dx,m5
    int 21h
    
    mov ah,2
    mov dx,bx
    int 21h
    
    jmp exit
    
    divi:
    mov ah,0
    mov al,num1
    sub al,30h
    
    mov cl,num2
    sub cl,30h
    
    div cl
    mov bx,ax
    add bh,30h
    add bl,30h
    
    mov ah,9
    lea dx,m6
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    jmp exit
    
    
    
    
    exit:
    main endp
      