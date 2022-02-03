{
  description = ''Distributions is a Nim library for distributions and their functions.'';
  inputs."distributions-master".url = "path:./master";
  inputs."distributions-v0_1_0".url = "path:./v0_1_0";
  inputs."distributions-v0_1_1".url = "path:./v0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}