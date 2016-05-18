.PHONY: vim neovim

vim:
	mkdir -p ~/.vim/{backup,undo}
	$(LN) `pwd`/vim/vimrc ~/.vimrc
	$(LN) `pwd`/vim/templates ~/.vim/templates
	$(LN) `pwd`/vim/tern.json ~/.tern-project
	if [ ! -d ~/.vim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone https://github.com/Shougo/dein.vim \
		~/.vim/bundle/repos/github.com/Shougo/dein.vim; \
		fi

neovim: vim
	mkdir -p ~/.config/nvim/{backup,undo}
	$(LN) `pwd`/vim/neovim.vim ~/.config/nvim/init.vim
	if [ ! -d ~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone https://github.com/Shougo/dein.vim \
		~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim; \
		fi
