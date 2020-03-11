.PHONY: aria2 aria2service
aria2:
	mkdir -p ~/tmp
	mkdir -p ~/.config/aria2
	rm -rf ~/.config/aria2/aria2.session
	touch ~/.config/aria2/aria2.session
	rm -rf ~/.config/aria2/aria2.conf
	sed -e "s@~@${HOME}@" \
		-e "s@<secret>@`openssl rand -hex 8`@" \
		`pwd`/aria2/aria2.conf > ~/.config/aria2/aria2.conf

aria2service:
	mkdir -p ~/.config/systemd/user/
	-cp -n `pwd`/aria2/aria2.service ~/.config/systemd/user/

aria2plist:
	-cp -n `pwd/aria2/aria2.plist ~/Library/LaunchAgents/com.github.aria2.aria2.plist
