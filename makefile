all: example

main.o:  main.asm
	nasm -f macho64 main.asm

example: main.o
	g++ -std=c++17 -Wall -o example main.cpp main.o -arch x86_64 -ld_classic
