# Nimble packages Nix flake

This repository contains experimental-grade, auto-generated Nix packages for 
most [Nimble](https://github.com/nim-lang/nimble) packages.

## TODO:
 - automatic testing
 - Back-versioning

## Usage

First add the flake to your registry:

```shell
nix flake add nimble 'github:nix-community/flake-nimble'
```

The flake can now be referred to by subsequent `nix` invocations:

```shell
nix app nimble#NimTacToe
  # Build and execute a Nimble binary

nix app nimble#nim c foo.nim
  # Invoke the Nim compiler

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
