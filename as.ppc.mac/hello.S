.data
msg:
	.ascii "Hello, world!\n"
	len = . - msg

.text
.globl _main

_main:
	li	r0,4
	li	r3,1
	addis	r4,0,ha16(msg)
	addi	r4,r4,lo16(msg)
	li	r5,len
	sc

	li	r0,1
	li	r3,0
	sc

