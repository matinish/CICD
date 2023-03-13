#!/bin/sh
##############
./s21_cat -b text.txt >s21_cat_out
cat -b text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b_done
else
  echo Test_b_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -e text.txt >s21_cat_out
cat -e text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_e_done
else
  echo Test1_e_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -n text.txt >s21_cat_out
cat -n text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_n_done
else
  echo Test1_n_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -s text.txt >s21_cat_out
cat -s text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_s_done
else
  echo Test_s_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -t text.txt >s21_cat_out
cat -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_t_done
else
  echo Test_t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -e text.txt >s21_cat_out
cat -b -e text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+e_done
else
  echo Test_b+e_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -n text.txt >s21_cat_out
cat -b -n text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+n_done
else
  echo Test_b+n_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -s text.txt >s21_cat_out
cat -b -s text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+s_done
else
  echo Test_b+s_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -t text.txt >s21_cat_out
cat -b -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+t_done
else
  echo Test_b+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -e -n text.txt >s21_cat_out
cat -e -n text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_e+n_done
else
  echo Test_e+n_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -e -s text.txt >s21_cat_out
cat -e -s text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_e+s_done
else
  echo Test_e+s_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -e -t text.txt >s21_cat_out
cat -e -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_e+t_done
else
  echo Test_e+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -n -s text.txt >s21_cat_out
cat -n -s text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_n+s_done
else
  echo Test_n+s_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -n -t text.txt >s21_cat_out
cat -n -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_n+t_done
else
  echo Test_n+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -s -t text.txt >s21_cat_out
cat -s -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_s+t_done
else
  echo Test_s+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -e -n text.txt >s21_cat_out
cat -b -e -n text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+e+n_done
else
  echo Test_b+e+n_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -e -s text.txt >s21_cat_out
cat -b -e -s text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+e+s_done
else
  echo Test_b+e+s_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -e -t text.txt >s21_cat_out
cat -b -e -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+e+t_done
else
  echo Test_b+e+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -n -s text.txt >s21_cat_out
cat -b -n -s text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+n+s_done
else
  echo Test_b+n+s_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -n -t text.txt >s21_cat_out
cat -b -n -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+n+t_done
else
  echo Test_b+n+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -s -t text.txt >s21_cat_out
cat -b -s -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+s+t_done
else
  echo Test_b+s+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -e -n -s text.txt >s21_cat_out
cat -e -n -s text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_e+n+s_done
else
  echo Test_e+n+s_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -e -n -t text.txt >s21_cat_out
cat -e -n -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_e+n+t_done
else
  echo Test_e+n+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -e -s -t text.txt >s21_cat_out
cat -e -s -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_e+s+t_done
else
  echo Test_e+s+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -n -s -t text.txt >s21_cat_out
cat -n -s -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_n+s+t_done
else
  echo Test_n+s+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -e -n -s text.txt >s21_cat_out
cat -b -e -n -s text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+e+n+s_done
else
  echo Test_b+e+n+s_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -e -n -t text.txt >s21_cat_out
cat -b -e -n -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+e+n+t_done
else
  echo Test_b+e+n+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -e -s -t text.txt >s21_cat_out
cat -b -e -s -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+e+s+t_done
else
  echo Test_b+e+s+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -n -s -t text.txt >s21_cat_out
cat -b -n -s -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+n+s+t_done
else
  echo Test_b+n+s+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -e -n -s -t text.txt >s21_cat_out
cat -e -n -s -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_e+n+s+t_done
else
  echo Test_e+n+s+t_fail
  diff s21_cat_out cat_out
fi
##############
./s21_cat -b -e -n -s -t text.txt >s21_cat_out
cat -b -e -n -s -t text.txt >cat_out
if cmp -s cat_out s21_cat_out; then
  echo Test_b+e+n+s+t_done
else
  echo Test_b+e+n+s+t_fail
  diff s21_cat_out cat_out
fi
#############

# diff -u cat/cat_out1 cat/s21_cat_out1
# ./cat/s21_cat -b ./cat/text.txt
# ./cat/s21_cat -e ./cat/text.txt
# ./cat/s21_cat -n ./cat/text.txt
# ./cat/s21_cat -s ./cat/text.txt
# ./cat/s21_cat -t ./cat/text.txt
