# https://github.com/felixonmars/dnsmasq-china-list

# gsed -e "s|\(.*\)|\1 {\n  forward . 119.29.29.29\n}|" \
#     china_list/accelerated-domains.china.raw.txt \
#     > china_list/accelerated-domains.china.coredns.conf

.PHONY: china_list
china_list:
	cd china_list
	curl 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf' \
		-o china_list/accelerated-domains.china.conf
	gsed -e 's|^server=/\(.*\)/114.114.114.114$$|\1|' \
		china_list/accelerated-domains.china.conf \
		| egrep -v '^#' \
		> china_list/accelerated-domains.china.raw.txt
	gsed -e 's|\(.*\)|forward-zone:\n  name: "\1."\n  forward-addr: 119.29.29.29\n|' \
		china_list/accelerated-domains.china.raw.txt \
		> china_list/unbound.conf
	# cp china_list/unbound.conf /usr/local/etc/unbound/accelerated-domains.china.unbound.conf
	gsed -e 's|\(.*\)|    - DOMAIN-SUFFIX,\1,DIRECT|' \
		china_list/accelerated-domains.china.raw.txt \
		> china_list/clash.conf
