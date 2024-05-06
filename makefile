CC = g++
ASMBIN = nasm

all:	asm cc link 
asm:
	$(ASMBIN) -f elf64 func.asm
	$(ASMBIN) -f elf64 func-fallback.asm
cc:
	$(CC) -std=c++17 -Wall -c -g -O0 main.cpp
link:	asm cc
	$(CC) -o example main.o func.o func-fallback.o
clean:
	rm *.o
	rm example
