# Nimble packages Nix flake

This repository contains experimental-grade, auto-generated
[Nim](https://nim-lang.org/) packages.

## TODO:
 - automatic testing
 - back-versioning
 - regular updates

## Usage

```shell
nix run nimble#NimTacToe
  # Build and execute a Nimble binary

nix dev-shell nimble
  # Enter a shell with the Nim and Nimble utilities
```

## Synchronization

To update the package definitions, invoke the Makefile:

```sh
make
# or
nix run nixpkgs#gnumake -c make
```

This will prefetch the repositories of new and updated Nimble packages and 
record the necessary metadata to fetch the source as a fixed-output derivation. 
Each package has such a fixed-output that is used as a input to a derivations 
that produce metadata to (attempt to) build the package.

## Upstream

Dependencies from Nixpkgs can be declared upstream from the *.nimble file. This 
feature is experimental and still needs to be negotiated with the Nimble team.

```nim
# toxcore.nimble
...

import distros
if detectOs(NixOS): # true for NixOS or any Nix shell
  foreignDep "libtoxcore"
  foreignDep "pkgconfig"
```
