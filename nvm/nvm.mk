.PHONY: nvm
nvm:
	mkdir -p ~/.nvm
	rm -rf ~/.nvm/nvm.sh ~/.nvmrc
	curl -s 'https://raw.githubusercontent.com/creationix/nvm/master/nvm.sh' -o `pwd`/nvm/nvm.sh
	ln -s `pwd`/nvm/nvm.sh ~/.nvm/nvm.sh
	#ln -s `pwd`/nvm/nvmrc ~/.nvmrc

nvmrc:
	rm -rf ~/.nvmrc
	cp `pwd`/nvm/nvmrc ~/.nvmrc
