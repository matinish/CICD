#!/bin/bash

PATTERN="hello"
PATTERN1="hello"
FILE="txt.txt"
FILE1="text.txt"

########## TEST 1 ##########

./s21_grep $PATTERN $FILE >> s21_grep.txt
./s21_grep $PATTERN $FILE $FILE >> s21_grep.txt
./s21_grep -e $PATTERN $FILE >> s21_grep.txt
./s21_grep -e $PATTERN $FILE $FILE >> s21_grep.txt
./s21_grep -i $PATTERN $FILE >> s21_grep.txt
./s21_grep -i $PATTERN $FILE $FILE>> s21_grep.txt
./s21_grep -v $PATTERN $FILE >> s21_grep.txt
./s21_grep -v $PATTERN $FILE $FILE >> s21_grep.txt
./s21_grep -c $PATTERN $FILE >> s21_grep.txt
./s21_grep -c $PATTERN $FILE $FILE >> s21_grep.txt
./s21_grep -l $PATTERN $FILE $FILE1 >> s21_grep.txt
./s21_grep -n $PATTERN $FILE >> s21_grep.txt
./s21_grep -n $PATTERN $FILE $FILE >> s21_grep.txt
./s21_grep -h $PATTERN $FILE >> s21_grep.txt
./s21_grep -h $PATTERN $FILE $FILE >> s21_grep.txt
./s21_grep -s $PATTERN $FILE >> s21_grep.txt
./s21_grep -s $PATTERN $FILE $FILE >> s21_grep.txt

########## TEST 2 ##########

./s21_grep -ic $PATTERN $FILE $FILE1 >> s21_grep.txt
./s21_grep -ih $PATTERN $FILE $FILE1 >> s21_grep.txt
./s21_grep -hs $PATTERN $FILE $FILE1 >> s21_grep.txt


########## TEST 1.1 ##########

grep $PATTERN $FILE >> grep.txt
grep $PATTERN $FILE $FILE >> grep.txt
grep -e $PATTERN $FILE >> grep.txt
grep -e $PATTERN $FILE $FILE >> grep.txt
grep -i $PATTERN $FILE >> grep.txt
grep -i $PATTERN $FILE $FILE >> grep.txt
grep -v $PATTERN $FILE >> grep.txt
grep -v $PATTERN $FILE $FILE >> grep.txt
grep -c $PATTERN $FILE >> grep.txt
grep -c $PATTERN $FILE $FILE >> grep.txt
grep -l $PATTERN $FILE $FILE1 >> grep.txt
grep -n $PATTERN $FILE >> grep.txt
grep -n $PATTERN $FILE $FILE >> grep.txt
grep -h $PATTERN $FILE >> grep.txt
grep -h $PATTERN $FILE $FILE >> grep.txt
grep -s $PATTERN $FILE >> grep.txt
grep -s $PATTERN $FILE $FILE >> grep.txt

########## TEST 2.1 ##########

grep -ic $PATTERN $FILE $FILE1 >> grep.txt
grep -ih $PATTERN $FILE $FILE1 >> grep.txt
grep -hs $PATTERN $FILE $FILE1 >> grep.txt

diff -s s21_grep.txt grep.txt