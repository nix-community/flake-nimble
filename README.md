# Nimble packages Nix flake

This repository contains experimental-grade, auto-generated Nix packages for most
[Nimble](https://github.com/nim-lang/nimble) packages.

## TODO:
 - external libraries, foreignDep parsing
 - automatic testing
 - Back-versioning

## Usage

First add the flake to your registry:

```shell
nix flake add nimble 'git+https://git.sr.ht/~ehmry/nim_nix_flake'
```

The flake can now be referred to by subsequent `nix` invocations:
```shell
nix run nimble#packages.x86_64-linux.NimTacToe -c NimTacToe

nix run nimble#packages.x86_64-linux.nim -c nim c foo.nim
```

## Synchronization

To update the package definitions, enter the local dev-shell and invoke the
Makefile:

```sh
$ nix dev-shell
> make
```

This will prefetch the repositories of new and updated Nimble packages and
record the necessary metadata to fetch the source as a fixed-output derivation.
Each package has such a fixed-output that is used as a input to a derivations
that produce metadata to (attempt to) build the package.
