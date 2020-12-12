final: prev: {

  nimblePackages = let
    pkgs = import ../default.nix { nixpkgs = final; };
    blacklist = import ../blacklist.nix;
  in removeAttrs pkgs blacklist;

}
