all: sync build

sync:
	git clone http://github.com/b2b-web-id/R

build:
	cd R
	./configure
	make
	cd ..
