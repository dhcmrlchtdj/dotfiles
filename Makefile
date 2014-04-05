ALL := vim git aria2 pip zsh htop
.PHONY: usage install $(ALL)

usage:
	@echo "Usage:\n$$ make install"

install: $(ALL)

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

aria2:
	rm -rf ~/.aria2
	mkdir ~/.aria2
	touch ~/.aria2/aria2.session
	gsed "s@~@${HOME}@" `pwd`/aria2/aria2.conf > ~/.aria2/aria2.conf

pip:
	rm -rf ~/.pip
	ln -s `pwd`/pip ~/.pip

zsh:
	rm -rf ~/.zshrc ~/.zshrc_grml
	wget -O `pwd`/zsh/zshrc_grml http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
	gsed -i "1611,2185s/^/#/" zsh/zshrc_grml
	ln -s `pwd`/zsh/zshrc_grml ~/.zshrc_grml
	ln -s `pwd`/zsh/zshrc ~/.zshrc

htop:
	rm -rf ~/.htoprc
	ln -s `pwd`/htop/htoprc ~/.htoprc
