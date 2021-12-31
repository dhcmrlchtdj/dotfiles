.PHONY: vim

vim:
	curl -f -L --create-dirs \
		-o ~/.local/share/nvim/site/autoload/plug.vim \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	-cp -n `pwd`/vim/vimrc.vim ~/.config/nvim/init.vim
