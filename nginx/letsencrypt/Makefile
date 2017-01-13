SHELL := /bin/bash

DNS_ENV := CF_Key="" CF_Email=""
ACME_BIN := ./acme.sh
ACME_OPT := --issue --dns dns_cf --keylength ec-384 --log
ACME := $(DNS_ENV) $(ACME_BIN) $(ACME_OPT)

ls:
	$(ACME_BIN) --list

re:
	$(ACME_BIN) --renewAll

re-force:
	$(ACME_BIN) --renewAll --force

example.org:
	$(ACME) -d example.org \
		-d www.example.org
