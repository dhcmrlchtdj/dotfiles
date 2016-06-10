SHELL := /bin/bash
OS := $(shell uname)


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
	neovim\
	zsh\
	git\
	htop\
	screen\
	eslint\
