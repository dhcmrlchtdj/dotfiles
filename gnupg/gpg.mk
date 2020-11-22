.PHONY: gpg
gpg:
	mkdir -p -m 700 ~/.gnupg
	-cp -n `pwd`/gnupg/dirmngr.conf ~/.gnupg/dirmngr.conf
	-cp -n `pwd`/gnupg/gpg.conf ~/.gnupg/gpg.conf
