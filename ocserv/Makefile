.PHONY: build configs first route


route:
	rm 'delegated-all-latest'
	curl 'http://ftp.afrinic.net/pub/stats/afrinic/delegated-afrinic-extended-latest' >> delegated-all-latest
	curl 'http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-extended-latest' >> delegated-all-latest
	curl 'http://ftp.arin.net/pub/stats/arin/delegated-arin-extended-latest' >> delegated-all-latest
	curl 'http://ftp.lacnic.net/pub/stats/lacnic/delegated-lacnic-extended-latest' >> delegated-all-latest
	curl 'http://ftp.ripe.net/pub/stats/ripencc/delegated-ripencc-extended-latest' >> delegated-all-latest
	grep 'CN' delegated-all-latest | grep 'ipv4' | awk -F\| '{ printf("%s/%d\n", $$4, 32-log($$5)/log(2)) }' > chn-route

build:
	docker build -t "niris/ocserv" .

run:
	docker run --rm -it -p 4433:443 niris/ocserv

configs:
	mkdir -p configs
	cp ./ocserv.conf configs/ocserv.conf
	echo 'cn = "AC CA CN"\norganization = "AC CA ORG"\nserial = 1\nexpiration_days = 366\nca\nsigning_key\ncert_signing_key\ncrl_signing_key' > configs/ca.tmpl
	certtool --generate-privkey --outfile=configs/ca-key.pem
	certtool --generate-self-signed --load-privkey=configs/ca-key.pem --template=configs/ca.tmpl --outfile=configs/ca-cert.pem
	echo 'cn = "AC USER CN"\nunit = "AC USER UNIT"\nexpiration_days = 365\nsigning_key\ntls_www_client' > configs/user.tmpl
	certtool --generate-privkey --outfile=configs/user-key.pem
	certtool --generate-certificate --load-privkey=configs/user-key.pem --load-ca-certificate=configs/ca-cert.pem --load-ca-privkey=configs/ca-key.pem --template=configs/user.tmpl --outfile=configs/user-cert.pem
	certtool --load-privkey=configs/user-key.pem --load-certificate=configs/user-cert.pem --pkcs-cipher=3des-pkcs12 --to-p12 --outder --outfile=user.p12

first: configs build
