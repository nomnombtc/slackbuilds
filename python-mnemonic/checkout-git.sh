#!/bin/sh

TS=$(date +%d%m%y)
PRGNAM=python-mnemonic
URL="https://github.com/trezor/python-mnemonic.git"

git clone $URL && \
	mv $PRGNAM $PRGNAM-git${TS}

tar cvjf $PRGNAM-git${TS}.tar.bz2 $PRGNAM-git${TS} && \
	rm -rf $PRGNAM-git${TS}

