packages/default.nix:
	nix shell .#nim -c nimble update
	nix run .#nimbleHelper generate

.PHONY: packages/default.nix
