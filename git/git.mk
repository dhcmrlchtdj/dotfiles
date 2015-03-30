.PHONY: git
git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	rm -f ~/.gitconfig.excludes
	ln -s `pwd`/git/gitconfig.excludes ~/.gitconfig.excludes
	rm -f ~/.gitconfig.attributes
	ln -s `pwd`/git/gitconfig.attributes ~/.gitconfig.attributes
	rm -f ~/.gitconfig.filter
	ln -s `pwd`/git/gitconfig.filter ~/.gitconfig.filter
