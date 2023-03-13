#ifndef SRC_GREP_S21_GREP_H_
#define SRC_GREP_S21_GREP_H_

#include <getopt.h>
#include <regex.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

typedef struct flags {
  int e;
  int i;
  int v;
  int c;
  int l;
  int n;
  int h;
  int s;
} gFlags;

void FileRead(int argc, char *argv[], gFlags *flag, int i);
int FlagPars(int argc, char *argv[], gFlags *flag);

#endif  //  SRC_GREP_S21_GREP_H_
