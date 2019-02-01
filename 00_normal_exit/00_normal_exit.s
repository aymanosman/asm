	.text
	.globl	main
main:
	subq	$8, %rsp
	movq	$8, %rdi
	call	exit
