{
  description = ''Trait system for nim'';
  inputs."nimtraits-master".url = "path:./master";
  inputs."nimtraits-v0_1_2".url = "path:./v0_1_2";
  inputs."nimtraits-v0_1_3".url = "path:./v0_1_3";
  inputs."nimtraits-v0_1_4".url = "path:./v0_1_4";
  inputs."nimtraits-v0_1_5".url = "path:./v0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}