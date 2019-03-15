;problem5
; 1^2 + 3^2 + 5^2


mov bx,-1h
mov cx,0h


l1:
   add bx,2h
   mov ax,bx
   mul ax
   add cx,ax
   
   cmp bx,last
   je l2
   jmp l1
         
l2:
hlt


last dw 5
end

; ans store in cx register 