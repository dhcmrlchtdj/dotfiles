.PHONY: build configs first

build:
	docker build -t "niris/ocserv" .

run:
	docker run --rm -it -p 4433:443 niris/ocserv

define CA_TMPL
	cn = "OCSERV CA CN"
	organization = "OCSERV CA ORG"
	serial = 1
	expiration_days = 366
	ca
	signing_key
	cert_signing_key
	crl_signing_key
endef
export CA_TMPL

define SERVER_TMPL
	cn = "OCSERV SERVER CN"
	organization = "OCSERV SERVER ORG"
	expiration_days = 365
	signing_key
	encryption_key
	tls_www_server
endef
export SERVER_TMPL

define USER_TMPL
	cn = "OCSERV USER CN"
	unit = "OCSERV USER UNIT"
	expiration_days = 365
	signing_key
	tls_www_client
endef
export USER_TMPL

configs:
	mkdir -p configs
	cp ./ocserv.conf configs/ocserv.conf
	certtool --generate-privkey --outfile configs/ca-key.pem
	echo "$$CA_TMPL" > configs/ca.tmpl
	certtool --generate-self-signed --load-privkey configs/ca-key.pem --template configs/ca.tmpl --outfile configs/ca-cert.pem
	certtool --generate-privkey --outfile configs/server-key.pem
	echo $$SERVER_TMPL > configs/server.tmpl
	certtool --generate-certificate --load-privkey configs/server-key.pem --load-ca-certificate configs/ca-cert.pem --load-ca-privkey configs/ca-key.pem --template configs/server.tmpl --outfile configs/server-cert.pem
	certtool --generate-privkey --outfile configs/user-key.pem
	echo $$USER_TMPL > configs/user.tmpl
	certtool --generate-certificate --load-privkey configs/user-key.pem --load-ca-certificate configs/ca-cert.pem --load-ca-privkey configs/ca-key.pem --template configs/user.tmpl --outfile configs/user-cert.pem
	certtool --to-p12 --load-privkey configs/user-key.pem --pkcs-cipher 3des-pkcs12 --load-certificate configs/user-cert.pem --outfile user.p12 --outder

first: configs build
