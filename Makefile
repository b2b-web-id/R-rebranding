all: update build

init:
	git submodule init

update:
	git submodule update

build:
	cd R
	./configure --without-recommended-packages --with-R-shlib --prefix=$HOME/R/R-rebranding
	make
	make install
	cd ..
