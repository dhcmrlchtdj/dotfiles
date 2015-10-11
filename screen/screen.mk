.PHONY: screen
screen:
	rm -rf ~/.screenrc
	ln -s `pwd`/screen/screenrc ~/.screenrc
