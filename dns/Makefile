.PHONY: unbound
unbound:
	if [ ! -d dnsmasq-china-list ]; then \
		git clone --depth 1 https://github.com/felixonmars/dnsmasq-china-list; \
		gsed -i.bak \
		-e 's/SERVER=114.114.114.114/SERVER=202.141.162.123/' \
		-e 's/sed/gsed/' \
		dnsmasq-china-list/Makefile; \
		fi
	$(MAKE) -C dnsmasq-china-list unbound
	cp ./dnsmasq-china-list/accelerated-domains.china.unbound.conf \
		/usr/local/etc/unbound/
	if [ ! -d /usr/local/etc/unbound/root.hints ]; then \
		curl 'https://www.internic.net/domain/named.cache' \
		-o '/usr/local/etc/unbound/root.hints'; fi
	-cp -n ./unbound.conf /usr/local/etc/unbound/
