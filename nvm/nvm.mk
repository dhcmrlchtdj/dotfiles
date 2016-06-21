.PHONY: nvm nvmrc
nvm:
	mkdir -p ~/.nvm
	curl 'https://raw.githubusercontent.com/creationix/nvm/v0.31.1/nvm.sh' | \
		sed -e '/nvm_process_parameters /d' > ~/.nvm/nvm.sh

nvmrc:
	-cp -n `pwd`/nvm/nvmrc ~/.nvmrc
