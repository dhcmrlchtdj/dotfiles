.PHONY: mitmproxy
mitmproxy:
	mkdir -p ~/.mitmproxy
	$(LN) `pwd`/mitmproxy/mitmproxy.conf ~/.mitmproxy/mitmproxy.conf
