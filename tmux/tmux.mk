.PHONY: tmux
tmux:
	rm -rf ~/.tmux.conf
	ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf
	@echo
