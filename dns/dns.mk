.PHONY: unbound
unbound:
	curl 'https://www.internic.net/domain/named.cache' \
		-o '/usr/local/etc/unbound/root.hints'
	-cp -n ./dns/unbound.conf /usr/local/etc/unbound/unbound.conf

# cd dnsmasq-china-list
# sed -i.bak -e 's/sed/gsed/g' Makefile
# make SERVER='119.29.29.29' unbound
# cp *.unbound.conf /usr/local/etc/unbound/ /usr/local/etc/unbound/
