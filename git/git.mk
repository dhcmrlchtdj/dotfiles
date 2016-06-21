.PHONY: git
git:
	-cp -n `pwd`/git/gitconfig ~/.gitconfig
	-cp -n `pwd`/git/gitconfig.excludes ~/.gitconfig.excludes
