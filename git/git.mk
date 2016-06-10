.PHONY: git
git:
	if [[ ! -e ~/.gitconfig ]]; then cp `pwd`/git/gitconfig ~/.gitconfig; fi
	cp `pwd`/git/gitconfig.excludes ~/.gitconfig.excludes
