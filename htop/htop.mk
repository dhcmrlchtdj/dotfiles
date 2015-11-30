OS := $(shell uname)

.PHONY: htop
htop:
ifeq ($(OS),Linux)
	mkdir -p ~/.config/htop
	rm -rf ~/.config/htop/htoprc
	ln -s `pwd`/htop/htoprc ~/.config/htop/htoprc
endif
ifeq ($(OS),Darwin)
	rm -rf ~/.htoprc
	cp `pwd`/htop/htoprc ~/.htoprc
endif
	@echo
