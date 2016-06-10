.PHONY: mitmproxy
mitmproxy:
	mkdir -p ~/.mitmproxy
	cp `pwd`/mitmproxy/mitmproxy.conf ~/.mitmproxy/mitmproxy.conf
