.PHONY: git
git:
	$(LN) `pwd`/git/gitconfig ~/.gitconfig
	$(LN) `pwd`/git/gitconfig.excludes ~/.gitconfig.excludes
	$(LN) `pwd`/git/gitconfig.attributes ~/.gitconfig.attributes
	$(LN) `pwd`/git/gitconfig.filter ~/.gitconfig.filter
