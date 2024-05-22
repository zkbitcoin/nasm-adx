CC = g++
ASMBIN = nasm

all:	asm cc link 
asm:
	$(ASMBIN) -f elf64 fr.asm
	$(ASMBIN) -f elf64 test.asm
cc:
	$(CC) -std=c++17 -Wall -c -g -O0 main.cpp
link:	asm cc
	$(CC) -g -no-pie -o example main.o fr.o test.o
#func-fallback.o
clean:
	rm *.o
	rm example
