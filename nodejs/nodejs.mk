.PHONY: nvm
nvm:
	mkdir -p ~/.nvm
	curl 'https://raw.githubusercontent.com/creationix/nvm/master/nvm.sh' | \
		sed -e '/nvm_process_parameters /d' > ~/.nvm/nvm.sh

.PHONY: npm
npm:
	-cp -n `pwd`/node/npmrc ~/.npmrc
	-cp -n `pwd`/node/yarnrc ~/.yarnrc
	-cp -n `pwd`/node/eslintrc.js ~/.eslintrc.js
	-cp -n `pwd`/node/prettierrc.json  ~/.prettierrc
