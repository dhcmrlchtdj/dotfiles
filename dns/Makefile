.PHONY: china-list

china-list:
	if [ ! -d dnsmasq-china-list ]; then \
		git clone --depth 1 https://github.com/felixonmars/dnsmasq-china-list; \
		gsed -i.bak \
		-e 's/SERVER=114.114.114.114/SERVER=119.29.29.29/' \
		-e 's/sed/gsed/' \
		dnsmasq-china-list/Makefile; \
		fi
	$(MAKE) -C dnsmasq-china-list unbound
