hello: hello.o
	ld -macosx_version_min 10.7.0 -lSystem -o hello hello.o

hello.o: hello.asm
	nasm -f macho64 hello.asm
