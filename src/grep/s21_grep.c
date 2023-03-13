#include "s21_grep.h"

int main(int argc, char *argv[]) {
  gFlags flag = {0, 0, 0, 0, 0, 0, 0, 0};
  int fp = FlagPars(argc, argv, &flag);
  if (fp != -1) {
    int i;
    for (i = optind + 1; i < argc; i++) {
      FileRead(argc, argv, &flag, i);
    }
  }
  return fp;
}

void FileRead(int argc, char *argv[], gFlags *flag, int i) {
  FILE *f = NULL;
  char *buf = NULL;
  size_t size;
  regmatch_t match[2];
  int files = argc - optind - 1;
  char *pattern = argv[optind];
  if ((f = fopen(argv[i], "r")) == NULL) {
    if (flag->s == 0) {
      printf("s21_grep: %s: No such file or directory", argv[i]);
    }
  } else {
    int strcount = 0;
    int count_c = 0;
    regex_t reg;
    int count_l = 0;
    while (getline(&buf, &size, f) != EOF) {
      int regex = 0;
      strcount++;
      regcomp(&reg, pattern, REG_EXTENDED);
      if (flag->i == 1) {
        regfree(&reg);
        regcomp(&reg, pattern, REG_ICASE);
      }
      regex = regexec(&reg, buf, 2, match, 0);
      if (flag->e == 1 && flag->i == 0 && flag->v == 0 && flag->c == 0 &&
          flag->n == 0) {
        if (regex != REG_NOMATCH) {
          if (files > 1) {
            printf("%s:", argv[i]);
          }
          printf("%s", buf);
        }
      }
      if (flag->v == 1 && flag->e == 0) {
        if (files > 1 && regex != 0) {
          printf("%s:", argv[i]);
        }
        if (regex == REG_NOMATCH) {
          printf("%s", buf);
        }
      }
      if (flag->c == 1 && flag->e == 0) {
        if (regex != REG_NOMATCH) {
          count_c++;
        }
      }
      if (flag->l == 1 && flag->e == 0 && count_l == 0) {
        if (regex != REG_NOMATCH) {
          count_l = 1;
          printf("%s\n", argv[i]);
        }
      }
      if (flag->n == 1) {
        if (files > 1 && regex == 0) {
          printf("%s:", argv[i]);
        }
        if (regex != REG_NOMATCH) {
          printf("%d:", strcount);
        }
      }
      if (flag->h == 1) {
        if (regex != REG_NOMATCH) {
          printf("%s", buf);
        }
      }
      if (regex != REG_NOMATCH && flag->e == 0 && flag->v == 0 &&
          flag->c == 0 && flag->l == 0 && flag->h == 0) {
        if (files > 1 && flag->n == 0) {
          printf("%s:", argv[i]);
        }
        printf("%s", buf);
      }
      regfree(&reg);
    }
    if (flag->c == 1) {
      if (getline(&buf, &size, f) == EOF) {
          if (files > 1) {
            printf("%s:%d\n", argv[i], count_c);
          } else {
            printf("%d\n", count_c);
          }
        }
    }
    free(buf);
  }
  if (f != NULL) {
    fclose(f);
  }
}

int FlagPars(int argc, char *argv[], gFlags *flag) {
  int er = 0;
  char p;
  while ((p = getopt(argc, argv, "eivclnhs")) != -1) {
    switch (p) {
      case 'e':
        flag->e = 1;
        break;
      case 'i':
        flag->i = 1;
        break;
      case 'v':
        flag->v = 1;
        break;
      case 'c':
        flag->c = 1;
        break;
      case 'l':
        flag->l = 1;
        break;
      case 'n':
        flag->n = 1;
        break;
      case 'h':
        flag->h = 1;
        break;
      case 's':
        flag->s = 1;
        break;
      case '?':
        er = -1;
        break;
    }
  }
  return er;
}
