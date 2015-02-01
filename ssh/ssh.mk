.PHONY: ssh
ssh:
	mkdir -p ~/.ssh
	rm -rf ~/.ssh/config
	ln -s `pwd`/ssh/config ~/.ssh/config
