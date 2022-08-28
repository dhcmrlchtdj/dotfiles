# https://github.com/felixonmars/dnsmasq-china-list
# https://github.com/misakaio/chnroutes2

.PHONY: proxy china_list chnroutes2
proxy: china_list chnroutes2

china_list:
	curl -L 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf' \
		-o proxy/accelerated-domains.china.conf
	sed -e 's|^server=/\(.*\)/114.114.114.114$$|\1|' \
		proxy/accelerated-domains.china.conf \
		| grep -v '^#' \
		> proxy/accelerated-domains.china.raw.txt
	sed -e 's|\(.*\)|"\1",|' \
		proxy/accelerated-domains.china.raw.txt \
		> proxy/godns.conf

chnroutes2:
	curl -L 'https://raw.githubusercontent.com/misakaio/chnroutes2/master/chnroutes.txt' \
		-o proxy/chnroutes.txt
	grep -v '^#' \
		proxy/chnroutes.txt \
		| sed -e 's|\(.*\)|    - IP-CIDR,\1,DIRECT|' \
		> proxy/clash.conf
