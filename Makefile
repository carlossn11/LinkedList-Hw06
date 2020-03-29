CC = g++

all: hw06 tar

hw06: hw06.cpp hw06.h addbook.o delbook.o showbook.o showbooks.o menu.o
	$(CC) hw06.cpp -o hw06 addbook.o delbook.o showbook.o showbooks.o menu.o

addbook.o: hw06.h addbook.cpp
	$(CC) -c addbook.cpp -o addbook.o

delbook.o: hw06.h delbook.cpp
	$(CC) -c delbook.cpp -o delbook.o

showbook.o: hw06.h showbook.cpp
	$(CC) -c showbook.cpp -o showbook.o

showbooks.o: hw06.h showbooks.cpp
	$(CC) -c showbooks.cpp -o showbooks.o

menu.o: hw06.h menu.cpp
	$(CC) -c menu.cpp -o menu.o

clean:
	rm *.o hw06 hw06.tar hw06.scr

tar:
	tar cf hw06.tar Makefile hw06.h booksdb.txt *.cpp hw06.scr
