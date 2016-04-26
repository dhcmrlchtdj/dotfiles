.PHONY: dnsmasq dnsmasq.d

dnsmasq.d:
	mkdir -p `pwd`/dnsmasq/dnsmasq.d
	curl 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf' \
		-o `pwd`/dnsmasq/dnsmasq.d/accelerated-domains.china.conf
	curl 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/bogus-nxdomain.china.conf' \
		-o `pwd`/dnsmasq/dnsmasq.d/bogus-nxdomain.china.conf

dnsmasq: dnsmasq.d
	sed -e "s@PWD@${PWD}@" \
		`pwd`/dnsmasq/dnsmasq.conf > /usr/local/etc/dnsmasq.conf
