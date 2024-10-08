CXX = g++
CXXFLAGS = -Wall -g

all: libcalc.a main

libcalc.a: calc.o
	ar rcs libcalc.a calc.o

calc.o: calc.cpp calc.h
	$(CXX) $(CXXFLAGS) -c calc.cpp

main: main.o libcalc.a
	$(CXX) $(CXXFLAGS) -o main main.o -L. -lcalc

main.o: main.cpp calc.h
	$(CXX) $(CXXFLAGS) -c main.cpp

clean:
	rm -f *.o *.a main
