.PHONY: ssh
ssh:
	mkdir -p ~/.ssh
	cp -n `pwd`/ssh/ssh_config ~/.ssh/config
