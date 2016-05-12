.PHONY: nvm nvmrc
nvm:
	mkdir -p ~/.nvm
	curl 'https://raw.githubusercontent.com/creationix/nvm/master/nvm.sh' -o ~/.nvm/nvm.sh

nvmrc:
	$(LN) `pwd`/nvm/nvmrc ~/.nvmrc
