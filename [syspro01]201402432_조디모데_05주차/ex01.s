.section .data
message:
	.string "201402432 Timothy Jo \n"
.section .text
.global main
main:
	push %ebp
	movl %esp, %ebp
	pushl $message
	call printf
	movl %ebp, %esp
	popl %ebp
	ret

