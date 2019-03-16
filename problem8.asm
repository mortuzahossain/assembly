;problem 8
;1.2^2+2.3^2+3.4^2
;            ^last veriable
mov ax,0h
mov bx,0h
mov cx,0h

l1:
    inc bx      ;bx = bx + 1
    mov ax,bx   ;ax = bx
    inc ax      ;ax = ax + 1
    mul ax      ;ax = ax * ax
    mul bx      ;ax = ax * bx
    add cx,ax   ;cx = cx + ax
    
    cmp bx,last
    je l2
    jmp l1

l2:
    hlt
    

last dw 3
end