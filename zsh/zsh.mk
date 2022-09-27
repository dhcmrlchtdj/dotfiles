.PHONY: zsh
zsh:
	mkdir -p ~/.config/zsh
	mkdir -p ~/.local/state/zsh
	mkdir -p ~/.local/share/zsh
	mkdir -p ~/.cache/zsh
	-cp -n `pwd`/zsh/zshrc ~/.zshrc
	-cp -n `pwd`/zsh/git-prompt.sh ~/.config/zsh/git-prompt.sh
	-cp -n `pwd`/zsh/zshrc_prompt_ooxx ~/.config/zsh/zshrc_prompt_ooxx
	-cp -n `pwd`/zsh/zshrc_common ~/.config/zsh/zshrc_common
	curl -sf 'https://raw.githubusercontent.com/rupa/z/master/z.sh' -o ~/.config/zsh/z.sh
