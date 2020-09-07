.section .data
scanf_format:
	.string "%d"
printf_num:
	.string "your number is : "
printf_grade:
	.string "your input grade : "
printf_result:
	.string "your grade is %d and number is %d\n"

input:
	.int 0
input2:
	.int 0

.section .text
.global main
main:
	push %ebp
	movl %esp, %ebp

	pushl $printf_num
	call printf

	pushl $input
	pushl $scanf_format
	call scanf
	
	pushl $printf_grade
	call printf

	pushl $input2
	pushl $scanf_format
	call scanf

	pushl input
	pushl input2
	pushl $printf_result
	call printf

	movl %ebp, %esp
	popl %ebp
	ret

