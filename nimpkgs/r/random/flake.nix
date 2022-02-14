{
  description = ''Pseudo-random number generation library inspired by Python'';
  inputs."random-master".url = "path:./master";
  inputs."random-v0_2_4".url = "path:./v0_2_4";
  inputs."random-v0_3_0".url = "path:./v0_3_0";
  inputs."random-v0_4_0".url = "path:./v0_4_0";
  inputs."random-v0_5_0".url = "path:./v0_5_0";
  inputs."random-v0_5_1".url = "path:./v0_5_1";
  inputs."random-v0_5_2".url = "path:./v0_5_2";
  inputs."random-v0_5_3".url = "path:./v0_5_3";
  inputs."random-v0_5_4".url = "path:./v0_5_4";
  inputs."random-v0_5_5".url = "path:./v0_5_5";
  inputs."random-v0_5_6".url = "path:./v0_5_6";
  inputs."random-v0_5_7".url = "path:./v0_5_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}