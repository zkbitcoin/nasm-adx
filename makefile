CC = g++
ASMBIN = nasm

all:	asm cc link 
asm:	   
	$(ASMBIN) -f macho64 func.asm
cc:	
	$(CC) -std=c++17 -Wall -arch x86_64 -c -g -O0 main.cpp 
link:	asm cc
	$(CC) -o example main.o func.o -arch x86_64 -ld_classic
clean:
	rm *.o
	rm example
