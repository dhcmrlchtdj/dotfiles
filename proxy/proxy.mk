.PHONY: proxychains
proxychains:
	mkdir -p ~/.proxychains
	-cp -n `pwd`/proxychains/proxychains.conf ~/.proxychains/proxychains.conf

# clash:
#     cp ./clash.yaml ~/Library/LaunchAgents/com.github.dreamacro.clash.plist
