cc ?= clang

all: build

build: pre link

temp:
	mkdir -p temp

pre: temp
	${cc} -c main.c -o temp/main.o

link:
	${cc} temp/main.o -o sova

