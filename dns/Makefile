.PHONY: china-list

china-list:
	git clone --depth 1 https://github.com/felixonmars/dnsmasq-china-list
	sed -i.bak 's/SERVER=114.114.114.114/SERVER=119.29.29.29/' dnsmasq-china-list/Makefile
	$(MAKE) -C dnsmasq-china-list unbound
	mv dnsmasq-china-list/accelerated-domains.china.unbound.conf .
	rm -rf dnsmasq-china-list
