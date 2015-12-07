.PHONY: neovim
neovim:
	mkdir -p ~/.config
	rm -rf ~/.config/nvim
	ln -s `pwd`/neovim/nvim ~/.config/nvim
	if [ ! -d ~/.config/nvim/bundle/neobundle.vim ]; then \
		git clone https://github.com/Shougo/neobundle.vim \
		~/.config/nvim/bundle/neobundle.vim; \
		fi
	@echo
