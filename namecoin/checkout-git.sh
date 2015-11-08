#!/bin/sh

TS=$(date +%d%m%y)
PRGNAM=namecoin-core
TBNAME=namecoin
URL="git://github.com/namecoin/namecoin-core.git"

git clone $URL && \
	mv $PRGNAM $TBNAME-git${TS}

tar cvjf $TBNAME-git${TS}.tar.bz2 $TBNAME-git${TS} && \
	rm -rf $TBNAME-git${TS}

