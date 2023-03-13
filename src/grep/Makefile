all: s21_grep test

s21_grep:
	gcc -Wall -Werror -Wextra s21_grep.c -o s21_grep

test:
	./check.sh

linter:
	python3 ../../materials/linters/cpplint.py --extensions=c ./s21_grep.c
	python3 ../../materials/linters/cpplint.py --extensions=c ./s21_grep.h

cppcheck:
	cppcheck --enable=all --suppress=missingIncludeSystem ./s21_grep.c
	cppcheck --enable=all --suppress=missingIncludeSystem ./s21_grep.h

clean: 
	rm s21_grep grep.txt s21_grep.txt

rebuild: all clean
