.section .data
scanf_str:
	.string "%d %d"
equal_str:
	.string "%d and %d are equal.\n"
nequal_str:
	.string "%d and %d are not equal.\n"
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
	pushl %ebx
	pushl %eax

	cmpl %ebx, %eax
	jne nequal
	
	pushl $equal_str
	call printf
	
	movl %ebp, %esp
	popl %ebp
	ret

nequal:
	pushl $nequal_str
	call printf

	movl %ebp, %esp
	popl %ebp
	ret

