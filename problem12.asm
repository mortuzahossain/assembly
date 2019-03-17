.stack 100h
.model small
.data
msg db 0ah,0dh,'$'
a db ?
.code 
main proc
   mov ax,@data
   mov ds,ax
   
   mov ah,1
   mov si,0
   
   input:
   int 21h
   cmp al,0dh
   je nxt
   mov a[si],al
   inc si
   jmp input
      
   nxt:
   mov a[si],'$'
   mov ah,9
   lea dx,msg
   int 21h
   
   mov cx,si
   sub si,1
   
   reverse:
   mov ah,2
   mov dl,a[si]
   int 21h
   dec si
   loop reverse
   
   end_of:
   mov ah,4ch
   int 21h
   
main endp
end main

