;problem 1
; 1 + 2 + 3+ 4 + 5...

mov cx,5h
mov ax,0h

l1: 
    add ax,cx
    
loop l1

hlt      

; ans store in ax register