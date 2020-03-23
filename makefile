packages/default.nix: nix_from_nimble
	nix app .#nimble update
	./$< generate

nix_from_nimble: src/nix_from_nimble.nim
	nix app .#nimble build

.PHONY: packages/default.nix
