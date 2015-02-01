.PHONY: htop
htop:
	rm -rf ~/.htoprc
	ln -s `pwd`/htop/htoprc ~/.htoprc
