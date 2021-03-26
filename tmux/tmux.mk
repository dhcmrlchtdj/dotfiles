.PHONY: tmux
tmux:
	mkdir -p ~/.config/tmux
	-cp -n `pwd`/tmux/tmux.conf ~/.config/tmux
