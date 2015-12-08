.PHONY: vim
vim:
	$(LN) `pwd`/vim ~/.vim
	$(LN) `pwd`/vim/vimrc ~/.vimrc
	if [ ! -d ~/.vim/bundle/neobundle.vim ]; then \
		git clone https://github.com/Shougo/neobundle.vim \
		~/.vim/bundle/neobundle.vim; \
		fi
