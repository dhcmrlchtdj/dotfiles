.PHONY: vim-config neovim vim

vim-config:
	-cp -n `pwd`/vim/conf/tern.json ~/.tern-project # tern
	-cp -n `pwd`/vim/conf/jsbeautifyrc.json ~/.jsbeautifyrc # js-beautify
	-cp -n `pwd`/vim/conf/clang-format ~/.clang-format # clang-format
	-cp -n `pwd`/vim/conf/pep8 ~/.config/pep8 # autopep8
	-cp -n `pwd`/vim/conf/flake8 ~/.config/flake8 # flake8

neovim: vim-config
	mkdir -p ~/.config/nvim/{swap,backup,undo,bundle}
	if [ ! -d ~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone --depth=1 https://github.com/Shougo/dein.vim \
		~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim; \
		fi
	-cp -n `pwd`/vim/vimrc.vim ~/.config/nvim/init.vim

vim: neovim
	-ln -s ~/.config/nvim/init.vim ~/.vimrc
