.PHONY: pip
pip:
	mkdir ~/.pip
	$(LN) `pwd`/pip/pip.conf ~/.pip/pip.conf


.PHONY: pipsi
pipsi:
	curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python2
	@echo
