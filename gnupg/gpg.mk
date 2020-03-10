.PHONY: gpg
gpg:
	mkdir -p -m 700 ~/.gnupg
	@# -cp -n `pwd`/gnupg/gpg-agent.conf ~/.gnupg/gpg-agent.conf
	@# -curl 'https://sks-keyservers.net/sks-keyservers.netCA.pem' -o ~/.gnupg/sks-keyservers.netCA.pem
	-cp -n `pwd`/gnupg/dirmngr.conf ~/.gnupg/dirmngr.conf
	-cp -n `pwd`/gnupg/gpg.conf ~/.gnupg/gpg.conf
