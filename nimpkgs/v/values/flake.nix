{
  description = ''Library for working with arbitrary values + a map data structure.'';
  inputs."values-master".url = "path:./master";
  inputs."values-0_1_1".url = "path:./0_1_1";
  inputs."values-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}