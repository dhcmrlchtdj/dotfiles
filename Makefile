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
