.PHONY: zsh
zsh:
	rm -rf ~/.zshrc ~/.zshrc_grml ~/.zshrc_prompt ~/.zshrc_others ~/.zshrc_common
	curl 'https://raw.githubusercontent.com/grml/grml-etc-core/master/etc/zsh/zshrc' -o `pwd`/zsh/zshrc_grml
	ln -s `pwd`/zsh/zshrc_grml ~/.zshrc_grml
	ln -s `pwd`/zsh/zshrc_prompt ~/.zshrc_prompt
	ln -s `pwd`/zsh/zshrc_common ~/.zshrc_common
	ln -s `pwd`/zsh/zshrc_`uname | tr '[:upper:]' '[:lower:]'` ~/.zshrc
	if [ -e "`pwd`/zsh/zshrc_others" ]; then ln -s `pwd`/zsh/zshrc_others ~/.zshrc_others; fi
