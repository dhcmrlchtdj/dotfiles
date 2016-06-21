.PHONY: htop
htop:
	mkdir -p ~/.config/htop
	-cp -n `pwd`/htop/htoprc ~/.config/htop/htoprc
