call: main

main: main.cpp
	clang++ -Wall -std=c++11 -fsanitize=address main.cpp -o main

test: main
	chmod +x test.sh
clean:
	rm -f main
	rm -f main.profdata main.profraw
cover:
	clang++ -fprofile-instr-generate -fcoverage-mapping main.cpp -o main
	LLVM_PROFILE_FILE="main.profraw" ./main < quadTest.txt
	xcrun llvm-profdata merge -sparse main.profraw -o main.profdata
	xcrun llvm-cov show ./main -instr-profile=main.profdata
fuzzer: main
	chmod +x FuzzTestScript.py
	python FuzzTestScript.py
	sh fuzz.sh