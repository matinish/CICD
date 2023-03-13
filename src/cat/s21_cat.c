#include "s21_cat.h"

int main(int argc, char *argv[]) {
  int fp = 0;
  cFlag flag = {0, 0, 0, 0, 0, 0, 1, 0, 0};
  int filec = 0;
  int nn = 1;
  fp = FlagPars(argc, argv, &flag);
  if (flag.b == 1) {
    flag.n = 0;
  }
  if (fp != -1) {
    int i;
    for (i = 1; i < argc; i++) {
      if (argv[i][0] != '-' && argv[i][1] != '-') {
        filec++;
        FileRead(argv, &flag, i, nn);
      }
    }
  }
  return fp;
}

void FileRead(char *argv[], cFlag *flag, int i, int nn) {
  FILE *f = NULL;
  if ((f = fopen(argv[i], "r")) == NULL) {
    printf("s21_cat: %s: No such file or directory", argv[i]);
  } else {
    int cn = 0, endsc = 0, strcount = 1, syms = 0;
    char g;
    int n = 0;
    int strcount_b = 0;
    char ps;
    while ((g = fgetc(f)) != EOF) {
      syms++;
      if (g == '\n') {
        syms = 0;
        endsc++;
        cn++;
      }
      if (syms == 1) {
        flag->nstr++;
        if (flag->ps != '\n') {
          flag->nstr--;
        }
      }
      if (g != '\n') {
        cn = -1;
      }
      if (flag->s == 1) {
        if (cn >= 2) {
          continue;
        }
      }
      if (flag->b == 1) {
        if (n == 0 && g != '\n') {
          strcount_b++;
          printf("%6d\t", strcount_b);
        }
        if (g != '\n' && ps == '\n') {
          strcount_b++;
          printf("%6d\t", strcount_b);
        }
      }
      if (flag->n == 1 && (nn == 1 || ps == '\n')) {
        printf("%6d\t", strcount);
        nn++;
      }
      if (flag->t == 1 && g == '\t') {
        printf("^");
        g = 'I';
      }
      if (flag->e == 1 && g == '\n') {
        printf("%c", '$');
      }
      if (g == '\n') {
        strcount++;
      }
      if (flag->v == 1 &&
          (g < 9 || (g > 10 && g < 13) || (g > 13 && g < 32) || g == 127)) {
        printf("^");
        g += 64;
      }
      ps = g;
      printf("%c", g);
      n++;
    }
    fclose(f);
  }
}

int FlagPars(int argc, char *argv[], cFlag *flag) {
  int er = 1;
  char p;
  static struct option long_options[] = {{"number-nonblank", 0, 0, 'b'},
                                         {"number", 0, 0, 'n'},
                                         {"squeeze-blank", 0, 0, 's'},
                                         {0, 0, 0, 0}};
  int option_index = 0;
  while ((p = getopt_long(argc, argv, "bEensTtv", long_options,
                          &option_index)) != -1) {
    switch (p) {
      case 'b':
        flag->b = 1;
        break;
      case 'E':
        flag->e = 1;
        break;
      case 'e':
        flag->e = 1;
        flag->v = 1;
        break;
      case 'n':
        flag->n = 1;
        break;
      case 's':
        flag->s = 1;
        break;
      case 'T':
        flag->t = 1;
        break;
      case 't':
        flag->t = 1;
        flag->v = 1;
        break;
      case 'v':
        flag->v = 1;
        break;
      case '?':
        er = -1;
        break;
    }
  }
  return er;
}
