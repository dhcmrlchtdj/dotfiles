.PHONY: aria2 aria2service
aria2:
	mkdir -p ~/.aria2 ~/tmp/aria2
	rm -rf ~/.aria2/aria2.session
	touch ~/.aria2/aria2.session
	rm -rf ~/.aria2/aria2.conf
	sed -e "s@~@${HOME}@" \
		-e "s@<secret>@`LC_CTYPE=C tr -dc '[:alnum:]' < /dev/urandom | head -c 16`@" \
		`pwd`/aria2/aria2.conf > ~/.aria2/aria2.conf

aria2service:
	mkdir -p ~/.config/systemd/user/
	-cp -n `pwd`/aria2/aria2.service ~/.config/systemd/user/
