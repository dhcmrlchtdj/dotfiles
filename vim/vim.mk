.PHONY: vim neovim

vim:
	mkdir -p ~/.vim/{backup,undo}
	cp -n `pwd`/vim/vimrc ~/.vimrc
	cp -n `pwd`/vim/templates ~/.vim/
	cp -n `pwd`/vim/tern.json ~/.tern-project
	cp -n `pwd`/vim/jsbeautifyrc.json ~/.jsbeautifyrc
	cp -n `pwd`/vim/clang-format ~/.clang-format
	if [ ! -d ~/.vim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone --depth=1 https://github.com/Shougo/dein.vim \
		~/.vim/bundle/repos/github.com/Shougo/dein.vim; \
		fi

neovim: vim
	mkdir -p ~/.config/nvim/{backup,undo}
	cp -n `pwd`/vim/neovim.vim ~/.config/nvim/init.vim
	if [ ! -d ~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone --depth=1 https://github.com/Shougo/dein.vim \
		~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim; \
		fi
