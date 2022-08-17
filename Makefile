all: update patch config build

init:
	rm -rf R/*
	git submodule init

update:
	git submodule update --init --remote --force --depth=1

patch:
	cp Rprofile.site R/src/gnuwin32/fixed/etc/Rprofile.site
	cp Rprofile.site R/etc/Rprofile.site

config:
	cd R && ./configure --without-recommended-packages --with-R-shlib --prefix=/opt/b2b-web-id/R

build:
	make && sudo make install
