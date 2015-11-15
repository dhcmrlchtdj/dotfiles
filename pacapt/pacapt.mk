.PHONY: pacapt
pacapt:
	mkdir -p ~/.local/bin
	rm -rf ~/.local/bin/pacman
	curl 'https://raw.githubusercontent.com/icy/pacapt/ng/pacapt' -o `pwd`/pacapt/pacapt
	chmod a+x `pwd`/pacapt/pacapt
	if !(type "pacman" &> /dev/null); then ln -s `pwd`/pacapt/pacapt ~/.local/bin/pacman; fi
	@echo
