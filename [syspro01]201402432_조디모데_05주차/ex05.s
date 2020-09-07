.section .data
message:
	.string "%d\n"

val1:
	.int 100

.section .text
.global main
main :
	push %ebp
	movl %esp, %ebp
	
	leal val1, %eax
	pushl (%eax)
	pushl $message
	call printf

	movl %ebp, %esp
	popl %ebp
	ret

