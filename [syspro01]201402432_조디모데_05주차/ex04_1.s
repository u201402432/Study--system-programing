.section .data
message:
	.string "%d shift %dtimes = %d\n"
val1 :
	.int 27
.section .text
.global main
main:
	pushl %ebp
	movl %esp, %ebp

	movl val1, %eax
	sarl $4, %eax
	pushl %eax
	pushl $4
	pushl val1
	pushl $message
	call printf
	
	movl %ebp, %esp
	popl %ebp
	ret
