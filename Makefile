.PHONY: usage
usage:
	@echo "make install \t # install default"
	@echo "make show \t # show available "


include */*.mk


.PHONY: show
show:
	@make -nprR | gsed -n -e "/^$$/{n; /^[^.#].*:/{s/:.*//; p}}" | sort


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
	pip\
	screen\
	siege\
	sqlite\
	ssh\
	vim\
	zsh\
