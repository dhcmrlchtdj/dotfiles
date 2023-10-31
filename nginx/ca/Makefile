SHELL := bash
DOMAIN := example.com

.PHONY: check_pem
check_pem:
	openssl x509 -noout -text -in latest.pem | grep 'Not After'

$(DOMAIN).csr: domain.key
	# openssl req -noout -text -verify -in $(DOMAIN).csr
	# openssl req -new -subj "/CN=$(DOMAIN)" -key domain.key -out $(DOMAIN).csr
	openssl req -new \
		-sha256 \
		-subj "/CN=$(DOMAIN)" \
		-reqexts SAN \
		-config <(cat /etc/ssl/openssl.cnf <(printf "[SAN]\nsubjectAltName=DNS:$(DOMAIN),DNS:*.$(DOMAIN)")) \
		-key domain.key \
		-out $(DOMAIN).csr

domain.key:
	# openssl genpkey -algorithm ED25519 -out domain.key
	openssl ecparam -genkey -name prime256v1 -out domain.key

register:
	@echo 'certbot register --no-eff-email --email user@example.com'

.PHONY: dns-auto
dns-auto: $(DOMAIN).csr
	certbot certonly \
		--config-dir=./letsencrypt/config \
		--work-dir=./letsencrypt/work \
		--logs-dir=./letsencrypt/logs \
		--dns-cloudflare \
		--dns-cloudflare-credentials cloudflare.ini \
		--csr $(DOMAIN).csr \
		-d $(DOMAIN) \
		-d *.$(DOMAIN)
	@echo 'ln -v -s $$(ls ????_chain.pem | sort | tail -n 1) latest.pem'

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
	@mkdir -p webroot
	certbot certonly \
		--webroot --webroot-path=./webroot \
		--preferred-challenges=http \
		--csr $(DOMAIN).csr \
		-d $(DOMAIN)
	@echo 'ln -v -s $$(ls ????_chain.pem | sort | tail -n 1) latest.pem'
