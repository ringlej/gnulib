# asinf.m4 serial 1
dnl Copyright (C) 2011 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_ASINF],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  AC_REQUIRE([gl_FUNC_ASIN])

  dnl Test whether asinf() exists. Assume that asinf(), if it exists, is
  dnl defined in the same library as asin().
  save_LIBS="$LIBS"
  LIBS="$LIBS $ASIN_LIBM"
  AC_CHECK_FUNCS([asinf])
  LIBS="$save_LIBS"
  if test $ac_cv_func_asinf = yes; then
    ASINF_LIBM="$ASIN_LIBM"
  else
    HAVE_ASINF=0
    ASINF_LIBM="$ASIN_LIBM"
  fi
  AC_SUBST([ASINF_LIBM])
])