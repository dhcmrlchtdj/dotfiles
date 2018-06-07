.PHONY: git
git:
	mkdir -p ~/.config/git
	-cp -n `pwd`/git/gitconfig ~/.config/git/config
	-cp -n `pwd`/git/gitconfig.ignore ~/.config/git/ignore
	-cp -n `pwd`/git/gitconfig.attributes ~/.config/git/attributes
