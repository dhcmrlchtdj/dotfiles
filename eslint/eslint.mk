.PHONY: eslint
eslint:
	$(LN) `pwd`/eslint/eslintrc.js ~/.eslintrc.js
	$(LN) `pwd`/eslint/eslintignore ~/.eslintignore
