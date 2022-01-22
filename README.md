# Nimble packages Nix flake

This repository contains experimental-grade, auto-generated
[Nim](https://nim-lang.org/) packages.

## TODO:
 - automatic testing
 - back-versioning

## Usage

```shell
nix run nimble#fugitive
  # Build and execute a Nimble binary

nix dev-shell nimble
  # Enter a shell with the Nim and Nimble utilities
```

For an example of how to refer to Nim packages when building a Nix package you could have a look at [this flake](https://codeberg.org/eris/nix-eris/src/branch/master/flake.nix).

## Synchronization

```sh
nix run .#package-updater

# …or to update an invidual package…

nix run .#package-updater generate foobar
```

This will prefetch the repositories of new and updated Nimble packages and
record the necessary metadata to fetch the source as a fixed-output derivation.
Each package has such a fixed-output that is used as a input to a derivations
that produce metadata to (attempt to) build the package.

## Overrides

Arguments to the Nim package builder may be added to the [./overrides.nix] file.
