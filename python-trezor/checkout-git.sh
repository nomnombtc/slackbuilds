#!/bin/sh

TS=$(date +%d%m%y)
PRGNAM=python-trezor
URL="https://github.com/trezor/python-trezor.git"
TAG="v0.11.2"

git clone $URL && \
	mv $PRGNAM $PRGNAM-git${TS}_${TAG}

cd $PRGNAM-git${TS}_${TAG}
git submodule add https://github.com/trezor/trezor-common.git trezor-common
git fetch --tags
git checkout $TAG
cd ..

tar cvjf $PRGNAM-git${TS}_${TAG}.tar.bz2 $PRGNAM-git${TS}_${TAG} && \
	rm -rf $PRGNAM-git${TS}_${TAG}

