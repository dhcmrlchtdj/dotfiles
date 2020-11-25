.PHONY: vim

vim:
	mkdir -p ~/.config/nvim/{swap,backup,undo}
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	-cp -n `pwd`/vim/vimrc.vim ~/.config/nvim/init.vim
	-cp -n -r `pwd`/vim/my-plugin/* ~/.config/nvim/
	-ln -s ~/.config/nvim/init.vim ~/.vimrc
