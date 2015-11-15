.PHONY: pip
pip:
	mkdir ~/.pip
	rm -rf ~/.pip/pip.conf
	ln -s `pwd`/pip/pip.conf ~/.pip/pip.conf
	@echo


.PHONY: pipsi
pipsi:
	curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python2
	@echo
