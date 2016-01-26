hello: hello.o
	ld -s -o hello hello.o

hello.o: hello.asm
	nasm -f elf64 hello.asm
