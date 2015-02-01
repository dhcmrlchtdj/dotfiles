.PHONY: mpv
mpv:
	rm -rf ~/.config/mpv/mpv.conf
	mkdir -p ~/.config/mpv
	ln -s `pwd`/mpv/mpv.conf ~/.config/mpv/mpv.conf
