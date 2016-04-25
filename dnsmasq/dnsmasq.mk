.PHONY: dnsmasq
dnsmasq:
	mkdir -p `pwd`/dnsmasq/dnsmasq.d
	sed -e "s@CONF_DIR@${PWD}/dnsmasq/dnsmasq.d@" \
		`pwd`/dnsmasq/dnsmasq.conf > /usr/local/etc/dnsmasq.conf
	curl 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/google.china.conf' \
		-o `pwd`/dnsmasq/dnsmasq.d/google.china.conf
	curl 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/bogus-nxdomain.china.conf' \
		-o `pwd`/dnsmasq/dnsmasq.d/bogus-nxdomain.china.conf
	curl 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf' \
		-o `pwd`/dnsmasq/dnsmasq.d/accelerated-domains.china.conf
