.PHONY: pip
pip:
	rm -rf ~/.pip
	mkdir ~/.pip
	ln -s `pwd`/pip/pip.conf ~/.pip/pip.conf


.PHONY: pipsi
pipsi:
	curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python2
