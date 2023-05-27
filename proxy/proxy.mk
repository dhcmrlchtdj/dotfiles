# https://github.com/felixonmars/dnsmasq-china-list
# https://github.com/misakaio/chnroutes2

.PHONY: proxy chnroutes2
proxy: chnroutes2

# china_list:
#     curl -L 'https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf' \
#         > proxy/china_list.r0.txt
#     grep -E -v '^#' proxy/china_list.r0.txt > proxy/china_list.r1.txt
#     sed -E 's|^server=/(.*)/114.114.114.114$$|"\1",|' proxy/china_list.r1.txt > proxy/china_list.r2.txt
#     cp proxy/china_list.r2.txt proxy/china_list.conf

chnroutes2:
	curl -L 'https://raw.githubusercontent.com/misakaio/chnroutes2/master/chnroutes.txt' \
		> proxy/chnroutes.r0.txt
	grep -E -v '^#' proxy/chnroutes.r0.txt > proxy/chnroutes.r1.txt
	sed -E 's@(.*)@    - IP-CIDR,\1,DIRECT@' proxy/chnroutes.r1.txt > proxy/chnroutes.r2.txt
	cp proxy/chnroutes.r2.txt proxy/chnroutes.conf

# adguard_dns_filter:
#     curl -L 'https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt' \
#         > proxy/adguard_dns_filter.r0.txt
#     grep -E '^\|\|' proxy/adguard_dns_filter.r0.txt > proxy/adguard_dns_filter.r1.txt
#     sed -E 's@\|\|([^^]+)\^@"\1",@' proxy/adguard_dns_filter.r1.txt > proxy/adguard_dns_filter.r2.txt
#     cp proxy/adguard_dns_filter.r2.txt proxy/adguard_dns_filter.conf
