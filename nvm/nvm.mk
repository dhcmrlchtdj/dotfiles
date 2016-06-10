.PHONY: nvm nvmrc
nvm:
	mkdir -p ~/.nvm
	curl 'https://raw.githubusercontent.com/creationix/nvm/master/nvm.sh' -o ~/.nvm/nvm.sh

nvmrc:
	cp `pwd`/nvm/nvmrc ~/.nvmrc
