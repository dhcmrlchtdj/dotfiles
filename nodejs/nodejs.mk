.PHONY: nvm
nvm:
	mkdir -p ~/.nvm
	curl 'https://raw.githubusercontent.com/creationix/nvm/master/nvm.sh' | \
		sed -e '/nvm_process_parameters /d' > ~/.nvm/nvm.sh

.PHONY: npm
npm:
	-cp -n `pwd`/npm/npmrc ~/.npmrc

npm_mirror: npm
	cat `pwd`/npm/mirror.npmrc >> ~/.npmrc

.PHONY: eslint
eslint:
	-cp -n `pwd`/eslint/eslintrc.js ~/.eslintrc.js
