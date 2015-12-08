.PHONY: mpv
mpv:
	mkdir -p ~/.config/mpv
	$(LN) `pwd`/mpv/mpv.conf ~/.config/mpv/mpv.conf
