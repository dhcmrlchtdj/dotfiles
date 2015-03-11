.PHONY: git
git:
	rm -f ~/.gitconfig ~/.gitconfig.ignore ~/.gitconfig.filter
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	ln -s `pwd`/git/gitconfig.filter ~/.gitconfig.filter
	ln -s `pwd`/git/gitconfig.ignore ~/.gitconfig.ignore
