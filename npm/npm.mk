.PHONY: npm
npm:
	if [[ ! -e ~/.npmrc ]]; then cp `pwd`/npm/npmrc ~/.npmrc; fi
