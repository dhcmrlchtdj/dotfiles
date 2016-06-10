.PHONY: ssh
ssh:
	mkdir -p ~/.ssh
	if [[ ! -e ~/.ssh/config ]]; then cp `pwd`/ssh/ssh_config ~/.ssh/config; fi
