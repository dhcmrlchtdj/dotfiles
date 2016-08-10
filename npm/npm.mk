.PHONY: npm
npm:
	-cp -n `pwd`/npm/npmrc ~/.npmrc

npm_mirror: npm
	cat `pwd`/npm/mirror.npmrc >> ~/.npmrc
