.PHONY: htop
htop:
	mkdir -p ~/.config/htop
	$(LN) `pwd`/htop/htoprc ~/.config/htop/htoprc
