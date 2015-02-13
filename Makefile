.PHONY: usage
usage:
	@echo "make install \t # install default"
	@echo "make show \t # show available "


include */*.mk


.PHONY: show
show:
	@make -nprR | gsed -n -e '/^$$/{n; /^[^#].*:$$/{s/://; p}}' | sort


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
