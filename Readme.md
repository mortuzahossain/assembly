# Install nasm
sudo apt install nasm

# Creating asm file
touch hello.asm

# Writing code 

```
section	.text
	global _start       ;must be declared for using gcc
_start:                     ;tell linker entry point
	mov	edx, len    ;message length
	mov	ecx, msg    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel

section	.data

msg	db	'Hello, world!',0xa	;our dear string
len	equ	$ - msg			;length of our dear string

```

# Creating Exicuting file & Run
nasm -f elf hello.asm; ld -m elf_i386 -s -o hello hello.o; ./hello

