.global _start
.section .text

_start:
	/* write message */
	mov r7, #0x04
	mov r0, #1	/* stdout */
	ldr r1, =msg
	mov r2, #msg_len
	swi 0

	/* exit */
	mov r7, #0x01
	mov r0, #0x00
	swi 0

.section .data

msg:	.ascii "Hello, world!\n"
msg_len	= . - msg
