.PHONY: unbound
unbound:
	curl 'https://www.internic.net/domain/named.cache' \
		-o '/usr/local/etc/unbound/root.hints'
	-cp -n ./dns/unbound.conf /usr/local/etc/unbound/unbound.conf

# cd dnsmasq-china-list
# sed -i.bak -e 's/sed/gsed/g' Makefile
# make SERVER='119.29.29.29' unbound
# cp *.unbound.conf /usr/local/etc/unbound/ /usr/local/etc/unbound/
.PHONY: china_list_mac
china_list_mac:
	curl -s 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf' \
		| gsed -e 's|^server=/\(.*\)/114.114.114.114$$|forward-zone:\n  name: "\1."\n  forward-addr: 119.29.29.29\n|' \
		> /usr/local/etc/unbound/accelerated-domains.china.unbound.conf
	curl -s 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/google.china.conf' \
		| gsed -e 's|^server=/\(.*\)/114.114.114.114$$|forward-zone:\n  name: "\1."\n  forward-addr: 119.29.29.29\n|' \
		> /usr/local/etc/unbound/google.china.unbound.conf
	curl -s 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/apple.china.conf' \
		| gsed -e 's|^server=/\(.*\)/114.114.114.114$$|forward-zone:\n  name: "\1."\n  forward-addr: 119.29.29.29\n|' \
		> /usr/local/etc/unbound/apple.china.unbound.conf
