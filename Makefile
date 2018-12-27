all: update patch build

init:
	git submodule init

update:
	git submodule update --remote

patch:
	bash patch.sh

build:
	bash build.sh
