;problem 15
; find the greatest number between two number

mov ax,1h ; veriable a
mov bx,1h ; veriable b

mov cx,0h

cmp ax,bx
je j3
jge j1
jmp j2

j1:
    ; a is biger   cx = 1
    mov cx,1h
    hlt
    
j2:
    ; b is biger   cx = 2
    mov cx,2h
    hlt
j3:
    ; a == b then cx = 3
    mov cx,3h
    hlt    



; if cx == 1 then 
end