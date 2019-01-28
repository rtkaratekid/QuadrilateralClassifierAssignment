call: main

main: main.cpp
	clang++ -Wall -std=c++11 main.cpp -o main

test: main
	chmod +x test.sh
clean:
	rm -f main
	rm -f main.profdata main.profraw
