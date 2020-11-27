.PHONY: vim

vim:
	mkdir -p ~/.config/nvim/{swap,backup,undo}
	curl -L --create-dirs -o ~/.local/share/nvim/site/autoload/plug.vim \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	-cp -n -r `pwd`/vim/my-plugin/* ~/.local/share/nvim/site/
	-cp -n `pwd`/vim/vimrc.vim ~/.config/nvim/init.vim
	-ln -s ~/.config/nvim/init.vim ~/.vimrc
