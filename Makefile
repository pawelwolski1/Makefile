MANIFEST= *.c *.h Makefile*
DESTDIR= $(HOME)/bin
VER= 0.1


CC = gcc
CFLAGS = -Wall -ansi -pedantic
LFLAGS = -lm
OBJS = hw_hello.o hw_power.o hw_main.o
EXEC = hello

$(EXEC): $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o $(EXEC)
	echo hello: zbudowane!

hw_main.o: hw_defs.h hw_hello.h hw_power.h
	$(CC) -c $(CFLAGS) hw_main.c

hw_hello.o: hw_hello.c hw_defs.h
	$(CC) -c $(CFLAGS) hw_hello.c

hw_power.o: hw_power.c hw_defs.h
	$(CC) -c $(CFLAGS) hw_power.c

clean:
	rm -f *~ *.bak
	rm -f $(EXEC) $(OBJS)

.PHONY:clean

install: all
	sh -c "if [ ! -d $(DESTDIR) ] ; then mkdir $(DESTDIR) ; fi"
	cp $(EXEC) $(DESTDIR)/$(EXEC)
	echo hello: zainstalowane!

dist: clean
	tar cvzf ../$(EXEC)-$(VER).tar.gz $(MANIFEST)
