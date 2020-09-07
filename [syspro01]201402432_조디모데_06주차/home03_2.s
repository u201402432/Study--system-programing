.section .data
printf_input:
	.string "input number 0~4 : "
scanf_input:
	.string "%d"
str_linux:
	.string "linux\n"
str_gcc:
	.string "gcc\n"
str_switch:
	.string "switch\n"
str_asm:
	.string"asm\n"
str_gdb:
	.string "gdb\n"
str_example:
	.string "example\n"
x:
	.int 0
JUMP_TABLE:
	.long L0
	.long L1
	.long L2
	.long L3
	.long L4

.section .text
.global main
main:
	pushl %ebp
	movl %esp, %ebp
	
	pushl $x
	pushl $scanf_input
	call scanf
	
	movl x, %eax
	cmpl $4, %eax
	jg DEFAULT
	cmpl $0 , %eax
	jl DEFAULT
	
	jmp *JUMP_TABLE(, %eax, 4)
	
L0:
	pushl $str_linux
	call printf
	jmp END
L1:
	pushl $str_gcc
	call printf
	jmp END

L2:
	push $str_switch
	call printf
	jmp L3
L3:
	pushl $str_asm
	call printf
	jmp DEFAULT
L4:
	pushl $str_gdb
	call printf
	jmp END	

DEFAULT:
	pushl $str_example
	call printf
	jmp END

END:
	movl %ebp, %esp
	popl %ebp
	ret

