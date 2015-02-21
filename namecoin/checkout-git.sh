#!/bin/sh

TS=$(date +%d%m%y)
PRGNAM=namecoin
URL="git://github.com/namecoin/namecoin.git"

git clone $URL && \
	mv $PRGNAM $PRGNAM-git${TS}

tar cvjf $PRGNAM-git${TS}.tar.bz2 $PRGNAM-git${TS} && \
	rm -rf $PRGNAM-git${TS}

