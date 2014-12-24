hello: hello.o
	ld -melf_i386 -s -o hello hello.o

hello.o: hello.asm
	nasm -f elf hello.asm
