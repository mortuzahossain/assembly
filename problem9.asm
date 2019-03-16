;problem 9
;1^2.2^2 + 2^2.3^2

mov ax,0h
mov bx,0h
mov cx,0h       ; ans store in cx

l1:
    inc bx
    mov ax,bx
    mul ax
    
    mov tmp,ax
    
    inc bx
    mov ax,bx
    mul ax
    
    mul tmp
    
    add cx,ax
    
    dec bx
    cmp bx,last
    je l2
    jmp l1    
    

l2:
    hlt
    

last dw 2
tmp dw ?
    
end