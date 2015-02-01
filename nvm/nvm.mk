.PHONY: nvm
nvm:
	mkdir -p ~/.nvm
	rm -rf ~/.nvm/nvm.sh ~/.nvmrc
	wget -O `pwd`/nvm/nvm.sh https://raw.githubusercontent.com/creationix/nvm/master/nvm.sh
	ln -s `pwd`/nvm/nvm.sh ~/.nvm/nvm.sh
	ln -s `pwd`/nvm/nvmrc ~/.nvmrc
