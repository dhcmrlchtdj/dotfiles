.PHONY: pip
pip:
	rm -rf ~/.pip
	mkdir ~/.pip
	ln -s `pwd`/pip/pip.conf ~/.pip/pip.conf
