section	.data
	message	db	"Hello, world!", 10
	MSGLEN	equ	$-message

section	.text
	global	_start

_start:
	mov	rdx, MSGLEN
	mov	rsi, dword message
	mov	rdi, 1
	mov	rax, 4
	syscall

	mov	rax, 1
	xor	edi, edi
	syscall
