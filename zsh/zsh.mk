.PHONY: zsh
zsh:
	-cp -n `pwd`/zsh/zshrc_prompt_ooxx ~/.zshrc_prompt_ooxx
	-cp -n `pwd`/zsh/zshrc_common ~/.zshrc_common
	-cp -n `pwd`/zsh/zshrc_`uname | tr '[:upper:]' '[:lower:]'` ~/.zshrc
	-mkdir -p ~/.virtualenvwrapper
	curl 'https://raw.githubusercontent.com/grml/grml-etc-core/master/etc/zsh/zshrc' -o ~/.zshrc_grml

bin_link:
	-mkdir -p ~/.local/bin
	-mkdir -p ~/.config/yarn/global/node_modules && \
		ln -s ~/.local/bin ~/.config/yarn/global/node_modules/.bin
ifeq ($(shell uname -s),Darwin)
	-mkdir -p ~/Library/Python/3.6 && ln -s ~/.local/bin ~/Library/Python/3.6/bin
endif
