#!/bin/sh
set -e
set -x

aclocal -I m4
automake --add-missing --copy
autoconf
export CFLAGS="-Wall -g -O0 -Wl,--no-undefined"
export CXXFLAGS="$CFLAGS"
./configure --enable-maintainer-mode $*
