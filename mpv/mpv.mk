.PHONY: mpv
mpv:
	mkdir -p ~/.config/mpv
	rm -rf ~/.config/mpv/mpv.conf
	ln -s `pwd`/mpv/mpv.conf ~/.config/mpv/mpv.conf
	@echo
