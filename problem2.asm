; problem 2
; 1 + 3 + 5 + 7
         
         
mov ax,last
mov bx,1h

l1:
    add ax,bx
    add bx,2h
    cmp bx,last
    
    je l2
    jmp l1

l2:
    hlt         
         
         
last dw 7h

end
; ans store in ax register