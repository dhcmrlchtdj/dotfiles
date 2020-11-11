# https://github.com/felixonmars/dnsmasq-china-list
# cd dnsmasq-china-list
# sed -i.bak -e 's/sed/gsed/g' Makefile
# make SERVER='119.29.29.29' unbound
# cp *.unbound.conf /usr/local/etc/unbound/ /usr/local/etc/unbound/

# curl 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/google.china.conf' -O
# gsed -e 's|^server=/\(.*\)/114.114.114.114$$|\1|' google.china.conf | egrep -v '^#' > google.china.raw.txt
# gsed -e 's|\(.*\)|forward-zone:\n  name: "\1."\n  forward-addr: 119.29.29.29\n|' google.china.raw.txt > google.china.unbound.conf
#
# curl 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/apple.china.conf' -O
# gsed -e 's|^server=/\(.*\)/114.114.114.114$$|\1|' apple.china.conf | egrep -v '^#' > apple.china.raw.txt
# gsed -e 's|\(.*\)|forward-zone:\n  name: "\1."\n  forward-addr: 119.29.29.29\n|' apple.china.raw.txt > apple.china.unbound.conf

.PHONY: china_list
.ONESHELL:
china_list:
	cd china_list
	curl 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf' -O
	gsed -e 's|^server=/\(.*\)/114.114.114.114$$|\1|' accelerated-domains.china.conf | egrep -v '^#' > accelerated-domains.china.raw.txt
	gsed -e 's|\(.*\)|forward-zone:\n  name: "\1."\n  forward-addr: 119.29.29.29\n|' accelerated-domains.china.raw.txt > accelerated-domains.china.unbound.conf
	# cp accelerated-domains.china.unbound.conf /usr/local/etc/unbound/accelerated-domains.china.unbound.conf
	cat accelerated-domains.china.raw.txt | gsed -e 's|\(.*\)|    - DOMAIN-SUFFIX,\1,DIRECT|' > clash.conf
