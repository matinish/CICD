all: s21_cat test

s21_cat:
	gcc -Wall -Werror -Wextra s21_cat.c -o s21_cat

test:
	./check.sh

linter:
	python3 ../../materials/linters/cpplint.py --extensions=c ./s21_cat.c
	python3 ../../materials/linters/cpplint.py --extensions=c ./s21_cat.h

cppcheck:
	cppcheck --enable=all --suppress=missingIncludeSystem ./s21_cat.c
	cppcheck --enable=all --suppress=missingIncludeSystem ./s21_cat.h

clean: 
	rm s21_cat cat_out s21_cat_out

rebuild: all clean
