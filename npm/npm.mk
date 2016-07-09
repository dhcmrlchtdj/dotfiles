.PHONY: npm
npm:
	-cp -n `pwd`/npm/npmrc ~/.npmrc

npm_taobao: npm
	cat `pwd`/npm/taobao-mirror.npmrc >> ~/.npmrc
