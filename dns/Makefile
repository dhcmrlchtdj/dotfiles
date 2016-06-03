.PHONY: unbound
unbound:
	if [ ! -d dnsmasq-china-list ]; then \
		git clone --depth 1 https://github.com/felixonmars/dnsmasq-china-list; \
		gsed -i.bak \
		-e 's/SERVER=114.114.114.114/SERVER=119.29.29.29/' \
		-e 's/sed/gsed/' \
		dnsmasq-china-list/Makefile; \
		fi
	$(MAKE) -C dnsmasq-china-list unbound
	cp ./dnsmasq-china-list/accelerated-domains.china.unbound.conf \
		/usr/local/etc/unbound/
	curl 'https://www.internic.net/domain/named.cache' \
		 -o '/usr/local/etc/unbound/root.hints'
	cp ./unbound.conf \
		/usr/local/etc/unbound/
