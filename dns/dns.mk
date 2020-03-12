.PHONY: unbound
unbound:
	curl 'https://www.internic.net/domain/named.cache' \
		-o '/usr/local/etc/unbound/root.hints'
	-cp -n ./dns/unbound.conf /usr/local/etc/unbound/unbound.conf
