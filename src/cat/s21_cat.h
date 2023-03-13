#ifndef SRC_CAT_S21_CAT_H_
#define SRC_CAT_S21_CAT_H_

#include <getopt.h>
#include <stdio.h>
#include <unistd.h>

typedef struct flags {
  int b;  //  нумерует только непустые строки
  int e;  //  также отображает символы конца строки как $
  int n;  //  нумерует все выходные строки
  int s;  //  сжимает несколько смежных пустых строк
  int t;  //  также отображает табы как ^I
  int v;
  int nstr;  //  счетчик непустых строк
  char ps;  //  предыдущий символ
  int er;  //  несуществующий флаг
} cFlag;

void FileRead(char *argv[], cFlag *flag, int i, int nn);
int FlagPars(int argc, char *argv[], cFlag *flag);

#endif  //  SRC_CAT_S21_CAT_H_
