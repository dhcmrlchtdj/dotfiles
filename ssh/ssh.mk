.PHONY: ssh
ssh:
	mkdir -p ~/.ssh
	$(LN) `pwd`/ssh/ssh_config ~/.ssh/config
