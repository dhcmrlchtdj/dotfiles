.PHONY: eslint
eslint:
	$(LN) `pwd`/eslint/eslintrc.json ~/.eslintrc
	$(LN) `pwd`/eslint/eslintignore ~/.eslintignore
