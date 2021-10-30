BACKEND ?= sequential_c

ifneq (,$(wildcard ./.env))
    include .env
    export
endif

.PHONY: run
run: futhark-codegen
	cargo run --features="${BACKEND}"

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