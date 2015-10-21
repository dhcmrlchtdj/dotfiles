.PHONY: vim
vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc
	if [ ! -d ~/.vim/bundle/neobundle.vim ]; then \
		git clone https://github.com/Shougo/neobundle.vim \
		~/.vim/bundle/neobundle.vim; \
		fi
