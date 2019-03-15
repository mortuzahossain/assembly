;problem 6
;1^3+2^3+3^3

mov ax,0h   ;initial value
mov bx,0h
mov cx,0h

l1:
    inc bx     ; bx = bx + 1
    mov ax,bx  ; ax = bx
    mul ax     ; ax = ax*ax
    mul ax     ; ax = ax*ax*ax
    
    add cx,ax  ; cx = cx + ax
    
    cmp bx,last
    je l2
    jmp l1


l2:
hlt


last dw 3
end

; ans store in cx register