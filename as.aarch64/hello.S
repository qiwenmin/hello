	.global _start
	.text

_start:
	mov x8, #64
	mov x2, msg_len
	adr x1, msg
	mov x0, #1
	svc #0

	mov x8, #93
	svc #0

	ret

	.data
msg:	.ascii "Hello, world!\n"
msg_len	= . - msg
