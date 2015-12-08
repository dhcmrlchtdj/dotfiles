SHELL := /bin/bash
OS := $(shell uname)
ifeq ($(OS),Linux)
	#LN := ln --backup=t -nvs
	#LN := ln -bnvs
	LN := ln -fns
endif
ifeq ($(OS),Darwin)
	LN := gln -fns
endif


.PHONY: usage
usage:
	@echo "make install	# install default"
	@echo "make show	# show available"


include */*.mk


.PHONY: show
show:
	@make -nprR | sed -ne '/^$$/{ n; /^[^#.]/{ s/:.*//; p; }; }' | sort -u


.PHONY: install
install: \
	ssh\
	vim\
	zsh\
	git\
	htop\
	screen\
	eslint\
	npm\
	nvm\
	siege\
	sqlite\
	mitmproxy\
	mpv\
