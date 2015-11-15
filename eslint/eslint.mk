.PHONY: eslint
eslint:
	rm -rf ~/.eslintrc
	ln -s `pwd`/eslint/eslintrc.json ~/.eslintrc
	rm -rf ~/.eslintignore
	ln -s `pwd`/eslint/eslintignore ~/.eslintignore
	@echo
