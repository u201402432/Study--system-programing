
.section .data
scanf_str:
	.string "%d %d"
result_str:
	.string "result : %d\n"
val1:
	.int 0
val2:
	.int 0
index:
	.int 1

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
	movl index, %ecx

	cmpl $0, %ebx
	je IF_VAL2_ZERO
	
	jmp MUL

MUL:	
	cmpl %ecx,val2 
	je END
	
	imul val1, %eax
	incl %ecx
	jmp MUL

IF_VAL2_ZERO:
	movl $1, %eax
	jmp END

END:
	pushl %eax
	pushl $result_str
	call printf

	movl %ebp, %esp
	popl %ebp
	ret

