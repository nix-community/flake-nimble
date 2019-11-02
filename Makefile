packages/default.nix: nix_from_nimble
	./$<

nix_from_nimble: src/nix_from_nimble.nim
	nimble build

.PHONY: packages/default.nix
