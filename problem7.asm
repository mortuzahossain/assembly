;problem 7 
;1.2+2.3+3.4+4.5
;`           ^defined as last veriable

mov cx,0h
mov bx,0h
mov ax,0h

l1:
    inc bx
    mov ax,bx
    inc bx
    mul bx
    dec bx
    
    add cx,ax
    

    cmp bx,last
    je l2
    jmp l1



l2:
    hlt



last dw 4 
end

; and store in cx register













