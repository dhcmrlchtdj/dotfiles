.PHONY: zsh
zsh:
	rm -rf ~/.zshrc ~/.zshrc_grml ~/.zshrc_prompt ~/.zshrc_others
	curl http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc -o `pwd`/zsh/zshrc_grml
	ln -s `pwd`/zsh/zshrc_grml ~/.zshrc_grml
	ln -s `pwd`/zsh/zshrc_prompt ~/.zshrc_prompt
	ln -s `pwd`/zsh/zshrc_others ~/.zshrc_others
ifeq ($(shell uname),Darwin)
	ln -s `pwd`/zsh/zshrc_darwin ~/.zshrc
else
	ln -s `pwd`/zsh/zshrc_linux ~/.zshrc
endif
