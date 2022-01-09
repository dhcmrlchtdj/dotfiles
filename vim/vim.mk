.PHONY: vim

vim:
	curl -f -L --create-dirs \
		-o ~/.local/share/nvim/site/autoload/plug.vim \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	mkdir -p ~/.config/nvim
	-cp -n `pwd`/vim/vimrc.vim ~/.config/nvim/init.vim
