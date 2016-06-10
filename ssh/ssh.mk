.PHONY: ssh
ssh:
	mkdir -p ~/.ssh
	cp `pwd`/ssh/ssh_config ~/.ssh/config
