.PHONY: vim
vim:
	$(LN) `pwd`/vim ~/.vim
	$(LN) `pwd`/vim/vimrc ~/.vimrc
	$(LN) `pwd`/vim/tern.json ~/.tern-project
	if [ ! -d ~/.vim/bundle/repos/github.com/Shougo/dein.vim ]; then \
		git clone https://github.com/Shougo/dein.vim \
		~/.vim/bundle/repos/github.com/Shougo/dein.vim; \
		fi
