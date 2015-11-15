.PHONY: nvm
nvm:
	mkdir -p ~/.nvm
	rm -rf ~/.nvm/nvm.sh
	curl 'https://raw.githubusercontent.com/creationix/nvm/master/nvm.sh' -o `pwd`/nvm/nvm.sh
	ln -s `pwd`/nvm/nvm.sh ~/.nvm/nvm.sh
	rm -rf ~/.nvmrc
	if [ "Darwin" != `uname` ]; then ln -s `pwd`/nvm/nvmrc ~/.nvmrc; fi
	@echo
