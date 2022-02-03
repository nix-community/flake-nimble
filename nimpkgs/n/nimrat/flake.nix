{
  description = ''Module for working with rational numbers (fractions)'';
  inputs."nimrat-master".url = "path:./master";
  inputs."nimrat-v0_1".url = "path:./v0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}