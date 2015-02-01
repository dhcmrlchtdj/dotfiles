.PHONY: npm
npm:
	rm -rf ~/.npmrc
	ln -s `pwd`/npm/npmrc ~/.npmrc
