#!/bin/sh

TS=$(date +%d%m%y)
PRGNAM=cython-hidapi
URL="https://github.com/trezor/cython-hidapi.git"

git clone $URL && \
	mv $PRGNAM $PRGNAM-git${TS}

#hidapi submodule
cd $PRGNAM-git${TS}
git submodule init
git submodule update
cd -

tar cvjf $PRGNAM-git${TS}.tar.bz2 $PRGNAM-git${TS} && \
	rm -rf $PRGNAM-git${TS}

