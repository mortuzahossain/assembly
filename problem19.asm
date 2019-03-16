;problem 19
; 1! + 2! + 3! + 4!
; ans store in bx register

mov bx,0h

l1:
    inc bx
    
    mov ax,1h
    mov cx,bx
    
    call l
    push ax
    
    cmp bx,last
    je l2
    jmp l1    


l2: ; do the sum and hlt
    mov ax,0h
    mov bx,0h
    mov cx,last
l3:
    pop ax
    add bx,ax
    loop l3
    hlt
l:
    MUL cx
    LOOP l
    ret

last dw 4h
end
 