.PHONY: htop
htop:
ifeq ($(OS),Linux)
	mkdir -p ~/.config/htop
	$(LN) `pwd`/htop/htoprc ~/.config/htop/htoprc
endif
ifeq ($(OS),Darwin)
	cp -v `pwd`/htop/htoprc ~/.htoprc
endif
