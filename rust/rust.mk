.PHONY: rust
rust:
	mkdir -p ~/.cargo
	-cp -n `pwd`/config ~/.cargo/config
