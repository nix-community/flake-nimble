{
  description = ''Unicode normalization forms (tr15)'';
  inputs."normalize-master".url = "path:./master";
  inputs."normalize-v0_1_0".url = "path:./v0_1_0";
  inputs."normalize-v0_1_1".url = "path:./v0_1_1";
  inputs."normalize-v0_2_0".url = "path:./v0_2_0";
  inputs."normalize-v0_2_1".url = "path:./v0_2_1";
  inputs."normalize-v0_2_2".url = "path:./v0_2_2";
  inputs."normalize-v0_3_0".url = "path:./v0_3_0";
  inputs."normalize-v0_3_1".url = "path:./v0_3_1";
  inputs."normalize-v0_4_0".url = "path:./v0_4_0";
  inputs."normalize-v0_5_0".url = "path:./v0_5_0";
  inputs."normalize-v0_6_0".url = "path:./v0_6_0";
  inputs."normalize-v0_8_0".url = "path:./v0_8_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}