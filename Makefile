.PHONY: run
run: futhark-codegen
	cargo run

.PHONY: sync-futhark
sync-futhark: futhark-deps futhark-codegen

.PHONY: futhark-deps
futhark-deps: lib

.PHONY: futhark-codegen
futhark-codegen: futhark_impl

futhark_impl: src/impl.fut
	cargo run --manifest-path codegen/Cargo.toml

lib: futhark.pkg
	futhark pkg sync