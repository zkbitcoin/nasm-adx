CC = g++
ASMBIN = nasm

all:	asm cc link 
asm:
	$(ASMBIN) -f elf64 test.asm
	$(ASMBIN) -f elf64 fr.asm
cc:
	$(CC) -std=c++17 -Wall -c -g -O0 main.cpp
link:	asm cc
	$(CC) -g -no-pie -o example main.o test.o fr.o
#func-fallback.o
clean:
	rm *.o
	rm example
