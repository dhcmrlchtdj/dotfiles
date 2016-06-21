.PHONY: mitmproxy
mitmproxy:
	mkdir -p ~/.mitmproxy
	cp -n `pwd`/mitmproxy/mitmproxy.conf ~/.mitmproxy/mitmproxy.conf
