#!/bin/sh

TS=$(date +%d%m%y)
PRGNAM=python-trezor
URL="https://github.com/trezor/python-trezor.git"

git clone $URL && \
	mv $PRGNAM $PRGNAM-git${TS}

#hmm only useful for udev rules file??
cd $PRGNAM-git${TS}
git submodule add https://github.com/trezor/trezor-common.git trezor-common
cd ..

tar cvjf $PRGNAM-git${TS}.tar.bz2 $PRGNAM-git${TS} && \
	rm -rf $PRGNAM-git${TS}

