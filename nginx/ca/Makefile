SHELL := bash
DOMAIN := example.com

.PHONY: ca
ca: $(DOMAIN).csr
	certbot certonly \
		--csr $(DOMAIN).csr \
		--dns-cloudflare \
		--dns-cloudflare-credentials cloudflare.ini \
		--dns-cloudflare-propagation-seconds 60 \
		-d $(DOMAIN) \
		-d *.$(DOMAIN)

$(DOMAIN).csr: domain.key
	# openssl req -noout -text -in domain.csr
	# openssl req -new -sha384 -subj "/CN=$(DOMAIN)" -key domain.key -out $(DOMAIN).csr
	openssl req -new -sha384 \
		-subj "/CN=$(DOMAIN)" \
		-reqexts SAN \
		-config <(cat /etc/ssl/openssl.cnf <(printf "[SAN]\nsubjectAltName=DNS:$(DOMAIN),DNS:*.$(DOMAIN)")) \
		-key domain.key \
		-out $(DOMAIN).csr

domain.key:
	# openssl ecparam -list_curves
	openssl ecparam -genkey -name secp384r1 -out domain.key

register:
	# pacman -S certbot certbot-dns-cloudflare
	certbot register --email TODO@example.com --agree-tos --no-eff-email
