.PHONY: all run clean

all: hello

hello: hello.o
	arm-none-eabi-gcc $< -o $@ -nostdlib

hello.o: hello.S
	arm-none-eabi-as $< -o $@

run: hello
	@qemu-arm ./$<

clean:
	rm -f hello hello.o

