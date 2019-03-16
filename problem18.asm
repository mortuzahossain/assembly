; problem 18                      
; 4! - 3! 
; ans store in ax register

num1 dw 3h ;small number
num2 dw 4h ;biger number


MOV CX,num1 ; num1!
MOV AX,1h
call l

mov bx,ax
 
MOV CX,num2 ; num2!
MOV AX,1h
call l

sub ax,bx

hlt

l:
MUL cx
LOOP l
ret
