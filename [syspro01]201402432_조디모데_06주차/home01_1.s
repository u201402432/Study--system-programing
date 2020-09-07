.section .data
scanf_str:
	.string "%d %d"
printf_str:
	.string "%d is smaller .\n"

val1:
	.int 0
val2:
	.int 0

.section .text
.global main
main:
	pushl %ebp
	movl %esp, %ebp
	
	pushl $val2
	pushl $val1
	pushl $scanf_str
	call scanf

	movl val1, %eax
	movl val2, %ebx
	cmpl %ebx, %eax
	
	jl smaller
	movl %ebx, %eax

smaller:
	pushl %eax
	pushl $printf_str
	call printf

	movl %ebp, %esp
	popl %ebp
	ret

