hello: hello.o
	ld -melf_i386_fbsd -s -o hello hello.o

hello.o: hello.asm
	nasm -f elf hello.asm
