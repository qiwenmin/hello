.text
	.global _start

_start:

	movl	$len, %edx
	movq	$msg, %rsi
	movl	$1, %edi
	movq	$4, %rax
	syscall

	movl	$0, %edi
	movq	$1, %rax
	syscall

.data

msg:
	.ascii	"Hello, world!\n"
	len = . - msg
