.PHONY: usage
usage:
	@echo "make install	# install default"
	@echo "make show	# show available"


SHELL := /bin/bash


include */*.mk


.PHONY: show
show:
	@make -nprR | sed -ne '/^$$/{ n; /^[^#.]/{ s/:.*//; p; }; }' | sort -u


.PHONY: install
install: \
	eslint\
	git\
	htop\
	mitmproxy\
	mpv\
	npm\
	nvm\
	screen\
	siege\
	sqlite\
	ssh\
	vim\
	zsh\
