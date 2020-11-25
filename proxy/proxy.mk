.PHONY: proxychains
proxychains:
	mkdir -p ~/.proxychains
	-cp -n `pwd`/proxychains/proxychains.conf ~/.proxychains/proxychains.conf
