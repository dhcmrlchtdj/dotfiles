.PHONY: zsh
zsh:
	curl 'https://raw.githubusercontent.com/grml/grml-etc-core/master/etc/zsh/zshrc' -o ~/.zshrc_grml
	cp `pwd`/zsh/zshrc_prompt_ooxx ~/.zshrc_prompt_ooxx
	cp `pwd`/zsh/zshrc_common ~/.zshrc_common
	cp `pwd`/zsh/zshrc_`uname | tr '[:upper:]' '[:lower:]'` ~/.zshrc
