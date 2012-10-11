#!/bin/sh

TS=$(date +%d%m%y)
PRGNAM=litecoin
URL="git://github.com/litecoin-project/litecoin.git"

git clone $URL && \
	mv $PRGNAM $PRGNAM-git${TS}

tar cvjf $PRGNAM-git${TS}.tar.bz2 $PRGNAM-git${TS} && \
	rm -rf $PRGNAM-git${TS}

