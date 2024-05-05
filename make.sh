#!/bin/sh

nasm -f macho64 main.asm
g++ -std=c++17 -Wall -o example main.cpp main.o -arch x86_64 -ld_classic
./example 20 3 10
