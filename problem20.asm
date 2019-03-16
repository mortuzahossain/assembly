;problem 20
; odd or even check
; ans store in cx register
; 1 means even 
; 2 means odd


mov ax,11h ; the number which have to check for even or odd

mov bl,2h

div bl

cmp ah,0h
je even
jmp odd

even:
    mov cx,1h ;even 1
    hlt


odd:
    mov cx,2h ;odd 2
    hlt


end