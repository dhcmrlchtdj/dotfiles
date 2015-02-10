.PHONY: git
git:
	rm -f ~/.gitconfig ~/.gitignore_global ~/.gitconfig.filter
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	ln -s `pwd`/git/gitconfig.filter ~/.gitconfig.filter
	ln -s `pwd`/git/gitignore_global ~/.gitignore_global
