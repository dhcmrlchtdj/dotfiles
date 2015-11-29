.PHONY: htop
htop:
	rm -rf ~/.htoprc
	cp `pwd`/htop/htoprc ~/.htoprc
	mkdir -p ~/.config/htop
	rm -rf ~/.config/htop/htoprc
	ln -s `pwd`/htop/htoprc ~/.config/htop/htoprc
	@echo
