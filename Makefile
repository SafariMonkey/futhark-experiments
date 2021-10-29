.PHONY: run
run: codegen
	cargo run

.PHONY: codegen
codegen: futhark_impl

futhark_impl: src/impl.fut
	cargo run --manifest-path codegen/Cargo.toml