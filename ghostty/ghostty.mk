.PHONY: ghostty
ghostty:
	mkdir -p ~/.config/ghostty/themes
	-cp -n `pwd`/ghostty/config ~/.config/ghostty/config
	-cp -n `pwd`/ghostty/themes/solarized2 ~/.config/ghostty/themes/solarized2
