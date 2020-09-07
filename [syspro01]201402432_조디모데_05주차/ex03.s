.section .data
addl_message:
	.string "%d + %d = %d\n"
subl_message:
	.string "%d - %d = %d\n"
imul_message:
	.string "%d * %d = %d\n"
incl_message:
	.string "%d++ = %d\n"
decl_message:
	.string "%d-- = %d\n"
andl_message:
	.string "%d & %d = %d\n"
xorl_message:
	.string "%d ^ %d = %d\n"

val1:
	.int 100
val2:
	.int 200

.section .text
.global main
main:
	push %ebp
	movl %esp, %ebp

	movl val1, %eax
	movl val2, %ebx
	addl %ebx, %eax
	pushl %eax
	pushl val2
	pushl val1
	pushl $addl_message
	call printf

	movl val1, %eax
	subl %ebx, %eax
	pushl %eax
	pushl val2
	pushl val1
	pushl $subl_message
	call printf

	movl val1, %eax
	imul %ebx, %eax
	pushl %eax
	pushl val2
	pushl val1
	pushl $imul_message
	call printf

	movl val1, %eax
	incl %eax
	pushl %eax
	pushl val1
	pushl $incl_message
	call printf

	movl val1, %eax
	decl %eax
	pushl %eax
	pushl val1
	pushl $decl_message
	call printf

	movl val1, %eax
	andl %ebx, %eax
	pushl %eax
	pushl val2
	pushl val1
	pushl $andl_message
	call printf

	movl val1, %eax
	xorl %ebx, %eax
	pushl %eax
	pushl val2
	pushl val1
	pushl $xorl_message
	call printf

	movl %ebp, %esp
	popl %ebp
	ret
