.PHONY: rust
rust:
	mkdir -p ~/.cargo
	-cp -n `pwd`/config.toml ~/.cargo/config.toml
