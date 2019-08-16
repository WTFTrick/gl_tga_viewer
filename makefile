CFLAGS=-Wall -Wextra -ggdb -Os 

OBJCOPY_ARCH=-O elf64-x86-64 -B i386:x86-64

all:
	objcopy -I binary $(OBJCOPY_ARCH) image1.tga image1.o
	gcc main.c image1.o -o main -Wall -ansi -lGL -lGLU -lglut

.PHONY : clean
clean :
	rm -f *.o file.o main *.d *~
