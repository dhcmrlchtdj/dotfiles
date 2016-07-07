.PHONY: pip
pip:
	mkdir -p ~/.pip
	-cp -n `pwd`/python/pip.conf ~/.pip/pip.conf
