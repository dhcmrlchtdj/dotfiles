.PHONY: vim neovim

vim:
	mkdir -p ~/.vim/{backup,undo}
	cp `pwd`/vim/vimrc ~/.vimrc
	cp -r `pwd`/vim/templates ~/.vim/
	cp `pwd`/vim/tern.json ~/.tern-project
	if [ ! -d ~/.vim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone --depth=1 https://github.com/Shougo/dein.vim \
		~/.vim/bundle/repos/github.com/Shougo/dein.vim; \
		fi

neovim: vim
	mkdir -p ~/.config/nvim/{backup,undo}
	cp `pwd`/vim/neovim.vim ~/.config/nvim/init.vim
	if [ ! -d ~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone --depth=1 https://github.com/Shougo/dein.vim \
		~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim; \
		fi
