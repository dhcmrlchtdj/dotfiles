.PHONY: neovim
neovim:
	mkdir -p ~/.config/nvim/{backup,undo}
	$(LN) `pwd`/neovim/init.vim ~/.config/nvim/init.vim
	$(LN) `pwd`/vim/tern.json ~/.tern-project
	if [ ! -d ~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone https://github.com/Shougo/dein.vim \
		~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim; \
		fi
