.PHONY: git
git:
	rm -rf ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	rm -rf ~/.gitconfig.excludes
	ln -s `pwd`/git/gitconfig.excludes ~/.gitconfig.excludes
	rm -rf ~/.gitconfig.attributes
	ln -s `pwd`/git/gitconfig.attributes ~/.gitconfig.attributes
	rm -rf ~/.gitconfig.filter
	ln -s `pwd`/git/gitconfig.filter ~/.gitconfig.filter
	@echo
