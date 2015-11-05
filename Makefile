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
	aria2\
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
