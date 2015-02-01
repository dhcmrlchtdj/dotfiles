.PHONY: usage
usage:
	@echo "Usage:\n$$ make install"


.PHONY: install
install: \
	mpv\
	aria2\
	git\
	htop\
	jshint\
	npm\
	nvm\
	pip\
	siege\
	sqlite\
	ssh\
	tmux\
	vim\
	zsh\



include */*.mk
