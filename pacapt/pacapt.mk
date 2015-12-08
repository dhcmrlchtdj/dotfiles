.PHONY: pacapt
pacapt:
	mkdir -p ~/.local/bin
	curl 'https://raw.githubusercontent.com/icy/pacapt/ng/pacapt' -o `pwd`/pacapt/pacapt
	chmod a+x `pwd`/pacapt/pacapt
	if [ ! -f "/etc/arch-release" ]; then $(LN) `pwd`/pacapt/pacapt ~/.local/bin/pacman; fi
