.PHONY: vim-common vim neovim

vim-common:
	-cp -n `pwd`/vim/conf/ycm_extra_conf.py  ~/.ycm_extra_conf.py # ycm
	-cp -n `pwd`/vim/conf/tern.json ~/.tern-project # tern
	-cp -n `pwd`/vim/conf/jsbeautifyrc.json ~/.jsbeautifyrc # js-beautify
	-cp -n `pwd`/vim/conf/clang-format ~/.clang-format # clang-format
	-cp -n `pwd`/vim/conf/pep8 ~/.config/pep8 # autopep8

vim: vim-common
	mkdir -p ~/.vim/{backup,undo,templates}
	-cp -n `pwd`/vim/vimrc ~/.vimrc
	-cp -n `pwd`/vim/templates/* ~/.vim/templates/
	if [ ! -d ~/.vim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone --depth=1 https://github.com/Shougo/dein.vim \
		~/.vim/bundle/repos/github.com/Shougo/dein.vim; \
		fi

neovim: vim-common
	mkdir -p ~/.config/nvim/{backup,undo,templates}
	-cp -n `pwd`/vim/neovim.vim ~/.config/nvim/init.vim
	-cp -n `pwd`/vim/templates/* ~/.config/nvim/templates/
	if [ ! -d ~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone --depth=1 https://github.com/Shougo/dein.vim \
		~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim; \
		fi
