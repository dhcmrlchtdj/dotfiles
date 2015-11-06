.PHONY: aria2
aria2:
	rm -rf ~/.aria2
	mkdir -p ~/.aria2 ~/tmp/aria2
	touch ~/.aria2/aria2.session
	sed -e "s@~@${HOME}@" \
		-e "s@\<secret\>@`LC_CTYPE=C tr -dc '[:alnum:]' < /dev/urandom | head -c 16`@" \
		`pwd`/aria2/aria2.conf > ~/.aria2/aria2.conf
