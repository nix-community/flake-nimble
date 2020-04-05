nimbleSrc:

final: prev:
with prev; {

  nim = callPackage ./compiler/wrapper { nimble = callPackage ./nimble { }; };

  nimblePackages = let
    pkgs = import ../default.nix { nixpkgs = final; };
    blacklist = import ../blacklist.nix;
  in removeAttrs pkgs blacklist;

  nimStdLib = callPackage ./compiler/stdlib { };

  nimUnwrapped = callPackage ./compiler/unwrapped { };

}
