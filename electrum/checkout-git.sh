#!/bin/sh
TS=$(date +%d%m%y)

git clone git://github.com/spesmilo/electrum.git && \
	mv electrum electrum-git${TS}

tar cvjf electrum-git${TS}.tar.bz2 electrum-git${TS} && \
	rm -rf electrum-git${TS}

