# https://github.com/felixonmars/dnsmasq-china-list

.PHONY: china_list
china_list:
	curl -L 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf' \
		-o china_list/accelerated-domains.china.conf
	sed -e 's|^server=/\(.*\)/114.114.114.114$$|\1|' \
		china_list/accelerated-domains.china.conf \
		| grep -v '^#' \
		> china_list/accelerated-domains.china.raw.txt
	sed -e 's|\(.*\)|    - DOMAIN-SUFFIX,\1,DIRECT|' \
		china_list/accelerated-domains.china.raw.txt \
		> china_list/clash.conf
	sed -e 's|\(.*\)|"\1",|' \
		china_list/accelerated-domains.china.raw.txt \
		> china_list/godns.conf
