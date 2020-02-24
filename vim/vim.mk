.PHONY: vim-config neovim vim

vim-config:
	-cp -n `pwd`/vim/conf/tern.json ~/.tern-project # tern
	-cp -n `pwd`/vim/conf/clang-format ~/.clang-format # clang-format
	-cp -n `pwd`/vim/conf/pep8 ~/.config/pep8 # autopep8
	-cp -n `pwd`/vim/conf/flake8 ~/.config/flake8 # flake8

neovim:
	mkdir -p ~/.config/nvim/{swap,backup,undo}
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	-cp -n `pwd`/vim/vimrc.vim ~/.config/nvim/init.vim

vim: neovim
	-ln -s ~/.config/nvim/init.vim ~/.vimrc
