.PHONY: mitmproxy
mitmproxy:
	mkdir -p ~/.mitmproxy
	rm -rf ~/.mitmproxy/mitmproxy.conf
	ln -s `pwd`/mitmproxy/mitmproxy.conf ~/.mitmproxy/mitmproxy.conf
	@echo
