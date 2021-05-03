SHELL := bash
DOMAIN := example.com

.PHONY: dns-auto
dns-auto: $(DOMAIN).csr
	certbot certonly \
		--dns-cloudflare \
		--dns-cloudflare-credentials cloudflare.ini \
		--dns-cloudflare-propagation-seconds 60 \
		--csr $(DOMAIN).csr \
		-d $(DOMAIN) \
		-d *.$(DOMAIN)

.PHONY: dns-manual
dns-manual: $(DOMAIN).csr
	certbot certonly \
		--manual \
		--preferred-challenges=dns \
		--csr $(DOMAIN).csr \
		-d $(DOMAIN) \
		-d *.$(DOMAIN)

.PHONY: webroot
webroot: $(DOMAIN).csr
	#ln -s $(ls ????_chain.pem | sort | tail -n 1) latest.pem
	mkdir -p webroot
	certbot certonly \
		--webroot --webroot-path=./webroot \
		--preferred-challenges=http \
		--csr $(DOMAIN).csr \
		-d $(DOMAIN)

.PHONY: check_pem
check_pem:
	openssl x509 -noout -text -in latest.pem | grep 'Not After'

$(DOMAIN).csr: domain.key
	# openssl req -noout -text -in domain.csr
	# openssl req -new -sha256 -subj "/CN=$(DOMAIN)" -key domain.key -out $(DOMAIN).csr
	openssl req -new -sha256 \
		-subj "/CN=$(DOMAIN)" \
		-reqexts SAN -config <(cat /etc/ssl/openssl.cnf <(printf "[SAN]\nsubjectAltName=DNS:$(DOMAIN),DNS:*.$(DOMAIN)")) \
		-key domain.key \
		-out $(DOMAIN).csr

domain.key:
	# openssl ecparam -list_curves
	openssl ecparam -genkey -name prime256v1 -out domain.key

register:
	# certbot register --email u1@example.com --agree-tos --no-eff-email
	certbot register --agree-tos --register-unsafely-without-email
