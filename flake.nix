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
    packages = import ./default.nix {
      nixpkgs = import nixpkgs { system = "x86_64-linux"; };
    };
    defaultPackage = self.packages.nim;
  };
}
