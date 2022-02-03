{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';
  inputs."stalinsort-master".url = "path:./master";
  inputs."stalinsort-v0_2_1".url = "path:./v0_2_1";
  inputs."stalinsort-v0_2_2".url = "path:./v0_2_2";
  inputs."stalinsort-v0_3_0".url = "path:./v0_3_0";
  inputs."stalinsort-v0_3_1".url = "path:./v0_3_1";
  inputs."stalinsort-v0_3_2".url = "path:./v0_3_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}