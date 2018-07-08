SHELL := /bin/bash

.PHONY: ca
ca: domain.csr
	certbot certonly \
		--csr /path/to/csr \
		--dns-cloudflare \
		--dns-cloudflare-credentials /path/to/cloudflare.ini \
		--dns-cloudflare-propagation-seconds 60 \
		-d example.com \
		-d *.example.com

domain.csr: domain.key
	# openssl req -noout -text -in domain.csr
	# openssl req -new -sha384 -subj "/CN=example.com" -key domain.key -out domain.csr
	openssl req -new -sha384 \
		-subj "/CN=example.com" \
		-reqexts SAN \
		-config <(cat /etc/ssl/openssl.cnf <(printf "[SAN]\nsubjectAltName=DNS:example.com,DNS:*.example.com")) \
		-key domain.key \
		-out domain.csr

domain.key:
	# openssl ecparam -list_curves
	openssl ecparam -genkey -name secp384r1 -out domain.key

register:
	# pacman -S certbot certbot-dns-cloudflare
	certbot register --email TODO@example.com --agree-tos --no-eff-email
