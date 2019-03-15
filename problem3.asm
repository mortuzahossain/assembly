;proble 3
; 2+4+6+8+10

mov ax,0h
mov bx,0h


l1:
   add bx,2h
   add ax,bx
   cmp bx,last
   je l2
   jmp l1

l2:
    hlt


last dw 10