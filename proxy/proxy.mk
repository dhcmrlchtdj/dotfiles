.PHONY: unbound
unbound:
	cp ./dnsmasq-china-list/accelerated-domains.china.unbound.conf \
		/usr/local/etc/unbound/
	if [ ! -d /usr/local/etc/unbound/root.hints ]; then \
		curl 'https://www.internic.net/domain/named.cache' \
		-o '/usr/local/etc/unbound/root.hints'; fi
	-cp -n ./unbound.conf /usr/local/etc/unbound/

.PHONY: proxychains
proxychains:
	mkdir -p ~/.proxychains
	-cp -n `pwd`/proxychains/proxychains.conf ~/.proxychains/proxychains.conf
