all: update patch build

init:
	rm -rf R
	git submodule init

update:
	git submodule update --remote

patch:
	bash patch.sh

build:
	bash build.sh
