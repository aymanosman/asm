CC=gcc
COPTS=-Wall -Wconversion -fomit-frame-pointer -fno-asynchronous-unwind-tables

a.out: main.s runtime.c
	$(CC) $(COPTS) runtime.c main.s
