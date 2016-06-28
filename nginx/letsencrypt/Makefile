SHELL := /bin/bash

certs := /path/to/certs
challenges := /path/to/challenges
CN := example.com
SAN := DNS:example.com,DNS:www.example.com

show:
	@make -nprR | sed -ne '/^$$/{ n; /^[^#.]/{ s/:.*//; p; }; }' | sort -u

sign: | account csr verify concat

account:
	mkdir -p $(certs)
	if [[ ! -f $(certs)/account.key ]]; then \
		openssl genrsa 4096 > $(certs)/account.key; fi

csr:
	mkdir -p $(certs)/$(CN)
	openssl ecparam -genkey -name secp384r1 > $(certs)/$(CN)/domain.key
	# openssl genrsa 4096 > $(certs)/$(CN)/domain.key
	openssl req -new -sha384 -key $(certs)/$(CN)/domain.key -subj "/CN=$(CN)" \
		-reqexts SAN -config \
		<(cat /etc/ssl/openssl.cnf <(printf "[SAN]\nsubjectAltName=$(SAN)")) \
		> $(certs)/$(CN)/domain.csr

verify:
	mkdir -p $(challenges)
	if [[ ! -f $(certs)/acme_tiny.py ]]; then \
		curl -s 'https://raw.githubusercontent.com/diafygi/acme-tiny/master/acme_tiny.py' \
		-o $(certs)/acme-tiny.py; fi
	python $(certs)/acme_tiny.py --account-key $(certs)/account.key \
		--csr $(certs)/$(CN)/domain.csr --acme-dir $(challenges) \
		> $(certs)/$(CN)/signed.crt

concat:
	if [[ ! -f $(certs)/intermediate.pem ]]; then \
		curl -s 'https://letsencrypt.org/certs/lets-encrypt-x3-cross-signed.pem' \
		-o $(certs)/intermediate.pem; fi
	cat $(certs)/$(CN)/signed.crt $(certs)/intermediate.pem \
		> $(certs)/$(CN)/chained.pem
