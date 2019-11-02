{
  edition = 201909;

  description = "Nimble packages";

  inputs = {
  nixpkgs = {
    uri = "git+https://github.com/nixos/nixpkgs.git";
    flake = false;
  }; };

  outputs = { self, nixpkgs }:
  {
    packages = import ./packages.nix { inherit nixpkgs; };
    defaultPackage = self.packages.nim;
  };
}
