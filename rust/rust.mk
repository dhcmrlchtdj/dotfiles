.PHONY: rust
rust:
	mkdir -p ~/.cargo
	-cp -n `pwd`/rust/config.toml ~/.cargo/config.toml
