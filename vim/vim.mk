.PHONY: vim-config vim neovim

vim-config:
	-cp -n `pwd`/vim/conf/tern.json ~/.tern-project # tern
	-cp -n `pwd`/vim/conf/jsbeautifyrc.json ~/.jsbeautifyrc # js-beautify
	-cp -n `pwd`/vim/conf/clang-format ~/.clang-format # clang-format
	-cp -n `pwd`/vim/conf/pep8 ~/.config/pep8 # autopep8

vim: vim-config
	mkdir -p ~/.vim/{backup,undo,templates,swap}
	-cp -n `pwd`/vim/templates/* ~/.vim/templates/
	if [ ! -d ~/.vim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone --depth=1 https://github.com/Shougo/dein.vim \
		~/.vim/bundle/repos/github.com/Shougo/dein.vim; \
		fi
	-cp -n `pwd`/vim/vimrc ~/.vimrc

neovim: vim
	mkdir -p ~/.config/nvim
	-ln -s `pwd`/vim/vimrc ~/.config/nvim/init.vim
