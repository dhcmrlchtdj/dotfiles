.PHONY: zsh
zsh:
	rm -rf ~/.zshrc ~/.zshrc_grml ~/.zshrc_prompt ~/.zshrc_others ~/.zshrc_common
	curl -s 'http://git.grml.org/?p=grml-etc-core.git;a=blob_plain;f=etc/zsh/zshrc;hb=HEAD' -o `pwd`/zsh/zshrc_grml
	ln -s `pwd`/zsh/zshrc_grml ~/.zshrc_grml
	ln -s `pwd`/zsh/zshrc_prompt ~/.zshrc_prompt
	ln -s `pwd`/zsh/zshrc_common ~/.zshrc_common
	test -e `pwd`/zsh/zshrc_others && ln -s `pwd`/zsh/zshrc_others ~/.zshrc_others
ifeq ($(shell uname),Darwin)
	ln -s `pwd`/zsh/zshrc_darwin ~/.zshrc
else
	ln -s `pwd`/zsh/zshrc_linux ~/.zshrc
endif
