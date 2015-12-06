.PHONY: zsh
zsh:
	curl 'https://raw.githubusercontent.com/grml/grml-etc-core/master/etc/zsh/zshrc' -o `pwd`/zsh/zshrc_grml
	rm -rf ~/.zshrc_grml
	ln -s `pwd`/zsh/zshrc_grml ~/.zshrc_grml
	rm -rf ~/.zshrc_prompt_ooxx
	ln -s `pwd`/zsh/zshrc_prompt_ooxx ~/.zshrc_prompt_ooxx
	rm -rf ~/.zshrc_common
	ln -s `pwd`/zsh/zshrc_common ~/.zshrc_common
	rm -rf ~/.zshrc
	ln -s `pwd`/zsh/zshrc_`uname | tr '[:upper:]' '[:lower:]'` ~/.zshrc
	rm -rf ~/.zshrc_others
	if [ -f "`pwd`/zsh/zshrc_others" ]; then ln -s `pwd`/zsh/zshrc_others ~/.zshrc_others; fi
	@echo
