.PHONY: eslint
eslint:
	rm -rf ~/.eslintrc
	ln -s `pwd`/eslint/eslintrc ~/.eslintrc
