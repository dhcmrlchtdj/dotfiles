.PHONY: zsh
zsh:
	curl 'https://raw.githubusercontent.com/grml/grml-etc-core/master/etc/zsh/zshrc' -o `pwd`/zsh/zshrc_grml
	$(LN) `pwd`/zsh/zshrc_grml ~/.zshrc_grml
	$(LN) `pwd`/zsh/zshrc_prompt_ooxx ~/.zshrc_prompt_ooxx
	$(LN) `pwd`/zsh/zshrc_common ~/.zshrc_common
	$(LN) `pwd`/zsh/zshrc_`uname | tr '[:upper:]' '[:lower:]'` ~/.zshrc
	if [ -f "`pwd`/zsh/zshrc_others" ]; then $(LN) `pwd`/zsh/zshrc_others ~/.zshrc_others; fi
