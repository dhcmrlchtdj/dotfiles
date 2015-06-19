.PHONY: eslint
eslint:
	rm -rf ~/.eslintrc ~/.eslintignore
	ln -s `pwd`/eslint/eslintrc ~/.eslintrc
	ln -s `pwd`/eslint/eslintignore ~/.eslintignore
