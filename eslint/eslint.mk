.PHONY: eslint
eslint:
	rm -rf ~/.eslintrc ~/.eslintignore
	ln -s `pwd`/eslint/eslintrc.json ~/.eslintrc
	ln -s `pwd`/eslint/eslintignore ~/.eslintignore
