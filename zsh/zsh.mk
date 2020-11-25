.PHONY: zsh
zsh:
	-cp -n `pwd`/zsh/zshrc_prompt_ooxx ~/.zshrc_prompt_ooxx
	-cp -n `pwd`/zsh/zshrc_common ~/.zshrc_common
	-cp -n `pwd`/zsh/zshrc_`uname | tr '[:upper:]' '[:lower:]'` ~/.zshrc
	curl 'https://raw.githubusercontent.com/rupa/z/master/z.sh' -o ~/.zshrc_z
