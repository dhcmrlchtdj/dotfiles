.PHONY: siege
siege:
	rm -rf ~/.siegerc
	ln -s `pwd`/siege/siegerc ~/.siegerc
	@echo
