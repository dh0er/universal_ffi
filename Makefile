.PHONY: version build run

version:
	bash ./tools/update-version.sh

build:
	cp -f example/src/* example_ffi_plugin/src/
	cd example && make build
	cp -rf example/web/assets/* example_ffi_plugin/assets/

run-web:
	cd example && make run-wasm

run-ffi:
	cd example && make run-ffi