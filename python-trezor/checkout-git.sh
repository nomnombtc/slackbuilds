#!/bin/sh

TS=$(date +%d%m%y)
PRGNAM=trezor
URL="https://github.com/trezor/trezor-firmware.git"
VER="0.12.2"
TAG="python/v$VER"

git clone $URL && \
	mv $PRGNAM-firmware $PRGNAM-git${TS}_${VER}

cd $PRGNAM-git${TS}_${VER}
git checkout $TAG
cd ..

tar cvzf $PRGNAM-git${TS}_${VER}.tar.gz $PRGNAM-git${TS}_${VER} && \
	rm -rf $PRGNAM-git${TS}_${VER}

