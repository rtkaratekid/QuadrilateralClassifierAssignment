all: main

main: main.cpp
	clang++ -Wall -std=c++11 main.cpp -o main

test: main
	./test.sh

clean: 
	rm -f main
