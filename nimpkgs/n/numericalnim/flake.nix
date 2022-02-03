{
  description = ''A collection of numerical methods written in Nim'';
  inputs."numericalnim-master".url = "path:./master";
  inputs."numericalnim-v0_1".url = "path:./v0_1";
  inputs."numericalnim-v0_2".url = "path:./v0_2";
  inputs."numericalnim-v0_2_1".url = "path:./v0_2_1";
  inputs."numericalnim-v0_3_0".url = "path:./v0_3_0";
  inputs."numericalnim-v0_4_0".url = "path:./v0_4_0";
  inputs."numericalnim-v0_5_0".url = "path:./v0_5_0";
  inputs."numericalnim-v0_5_0_1".url = "path:./v0_5_0_1";
  inputs."numericalnim-v0_5_1".url = "path:./v0_5_1";
  inputs."numericalnim-v0_5_2".url = "path:./v0_5_2";
  inputs."numericalnim-v0_6_0".url = "path:./v0_6_0";
  inputs."numericalnim-v0_6_0_1".url = "path:./v0_6_0_1";
  inputs."numericalnim-v0_6_1".url = "path:./v0_6_1";
  inputs."numericalnim-v0_6_2".url = "path:./v0_6_2";
  inputs."numericalnim-v0_6_3".url = "path:./v0_6_3";
  inputs."numericalnim-v0_7_0".url = "path:./v0_7_0";
  inputs."numericalnim-v0_7_1".url = "path:./v0_7_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}