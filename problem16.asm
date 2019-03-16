; problem 16
; factorial 5

mov cx,5h   ;factorial of number 5
mov ax,0h

mov ans,1h

l1: 
    mov ax,cx
    mul ans
    mov ans,ax
    
loop l1

mov ax,ans

ans dw ?


hlt  