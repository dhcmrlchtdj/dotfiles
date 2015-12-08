.PHONY: nvm
nvm:
	mkdir -p ~/.nvm
	curl 'https://raw.githubusercontent.com/creationix/nvm/master/nvm.sh' -o `pwd`/nvm/nvm.sh
	$(LN) `pwd`/nvm/nvm.sh ~/.nvm/nvm.sh
	if [ "Darwin" != `uname` ]; then $(LN) `pwd`/nvm/nvmrc ~/.nvmrc; fi
