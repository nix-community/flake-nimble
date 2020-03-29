nimbleSrc:

final: prev:
with prev; {

  nim = let nimUnwrapped = callPackage ./compiler/unwrapped { };
  in callPackage ./compiler/wrapper {
    nim = nimUnwrapped;
    nimStdLib = callPackage ./compiler/stdlib { nim = nimUnwrapped; };
    nimble = callPackage ./nimble { nim = nimUnwrapped; };
  };

  nimblePackages = let
    pkgs = import ../default.nix { nixpkgs = final; };
    blacklist = import ../blacklist.nix;
  in removeAttrs pkgs blacklist;

}
