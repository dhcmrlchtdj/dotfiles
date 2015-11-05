.PHONY: usage
usage:
	@echo "make install	# install default"
	@echo "make show	# show available"


include */*.mk


.PHONY: show
show:
	@make -nprR | sed -n -e '/^$$/{n' -e '/^[#.]/d' -e 's/:.*//' -e 'p' -e '}' | sort -u


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
