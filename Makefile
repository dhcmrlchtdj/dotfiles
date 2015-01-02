OS := $(shell uname)
ALL := vim git aria2 pip htop ssh sqlite tmux zsh jshint npm siege nvm
.PHONY: usage install $(ALL)

usage:
	@echo "Usage:\n$$ make install"


install: $(ALL)


nvm:
	mkdir -p ~/.nvm ~/.nvmrc
	rm -rf ~/.nvm/nvm.sh
	wget -O `pwd`/nvm/nvm.sh https://raw.githubusercontent.com/creationix/nvm/master/nvm.sh
	ln -s `pwd`/nvm/nvm.sh ~/.nvm/nvm.sh
	ln -s `pwd`/nvm/nvmrc ~/.nvmrc


siege:
	rm -rf ~/.siegerc
	ln -s `pwd`/siege/siegerc ~/.siegerc


npm:
	rm -rf ~/.npmrc
	ln -s `pwd`/npm/npmrc ~/.npmrc


sqlite:
	rm -rf ~/.sqliterc
	ln -s `pwd`/sqlite/sqliterc ~/.sqliterc


ssh:
	mkdir -p ~/.ssh
	rm -rf ~/.ssh/config
	ln -s `pwd`/ssh/config ~/.ssh/config


jshint:
	rm -rf ~/.jshintrc
	ln -s `pwd`/jshint/jshintrc ~/.jshintrc


vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc
	-git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim


git:
	rm -f ~/.gitconfig ~/.gitignore_global
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	ln -s `pwd`/git/gitignore_global ~/.gitignore_global


aria2:
	rm -rf ~/.aria2
	mkdir ~/.aria2
	touch ~/.aria2/aria2.session
	sed "s@~@${HOME}@" `pwd`/aria2/aria2.conf > ~/.aria2/aria2.conf


pip:
	rm -rf ~/.pip
	mkdir ~/.pip
	ln -s `pwd`/pip/pip.conf ~/.pip/pip.conf


zsh:
	rm -rf ~/.zshrc ~/.zshrc_grml ~/.zshrc_prompt ~/.zshrc_others
	wget -O `pwd`/zsh/zshrc_grml http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
	ln -s `pwd`/zsh/zshrc_grml ~/.zshrc_grml
	ln -s `pwd`/zsh/zshrc_prompt ~/.zshrc_prompt
	ln -s `pwd`/zsh/zshrc_others ~/.zshrc_others
ifeq ($(OS),Darwin)
	ln -s `pwd`/zsh/zshrc_darwin ~/.zshrc
else
	ln -s `pwd`/zsh/zshrc_linux ~/.zshrc
endif


htop:
	rm -rf ~/.htoprc
	ln -s `pwd`/htop/htoprc ~/.htoprc


tmux:
	rm -rf ~/.tmux.conf
	ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf
