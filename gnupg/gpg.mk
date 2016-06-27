.PHONY: gpg
gpg:
	mkdir -p -m 700 ~/.gnupg
	-cp -n `pwd`/gnupg/gpg.conf ~/.gnupg/gpg.conf
	-cp -n `pwd`/gnupg/gpg-agent.conf ~/.gnupg/gpg-agent.conf
	-cp -n `pwd`/gnupg/dirmngr.conf ~/.gnupg/dirmngr.conf