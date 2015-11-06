.PHONY: aria2
aria2:
	rm -rf ~/.aria2
	mkdir -p ~/.aria2 ~/tmp/aria2
	touch ~/.aria2/aria2.session
	sed "s@~@${HOME}@" `pwd`/aria2/aria2.conf > ~/.aria2/aria2.conf
