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

.section .text
.global main
main:
	pushl %ebp
	movl %esp, %ebp
	
	pushl $x
	pushl $scanf_input
	call scanf
	
	movl x, %eax
	movl $0, %ebx

	cmpl %ebx, %eax
	je L0
	incl %ebx
	
	cmpl %ebx, %eax
	je L1
	incl %ebx
	
	cmpl %ebx, %eax
	je L2
	incl %ebx
	
	cmpl %ebx, %eax
	je L3
	incl %ebx
	
	cmpl %ebx, %eax
	je L4
	incl %ebx
	
	jmp DEFAULT
	
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

