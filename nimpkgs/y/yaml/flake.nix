{
  description = ''YAML 1.2 implementation for Nim'';
  inputs."yaml-master".url = "path:./master";
  inputs."yaml-v0_1_0".url = "path:./v0_1_0";
  inputs."yaml-v0_10_0".url = "path:./v0_10_0";
  inputs."yaml-v0_10_1".url = "path:./v0_10_1";
  inputs."yaml-v0_10_2".url = "path:./v0_10_2";
  inputs."yaml-v0_10_3".url = "path:./v0_10_3";
  inputs."yaml-v0_10_4".url = "path:./v0_10_4";
  inputs."yaml-v0_11_0".url = "path:./v0_11_0";
  inputs."yaml-v0_12_0".url = "path:./v0_12_0";
  inputs."yaml-v0_13_0".url = "path:./v0_13_0";
  inputs."yaml-v0_13_1".url = "path:./v0_13_1";
  inputs."yaml-v0_14_0".url = "path:./v0_14_0";
  inputs."yaml-v0_15_0".url = "path:./v0_15_0";
  inputs."yaml-v0_16_0".url = "path:./v0_16_0";
  inputs."yaml-v0_2_0".url = "path:./v0_2_0";
  inputs."yaml-v0_3_0".url = "path:./v0_3_0";
  inputs."yaml-v0_4_0".url = "path:./v0_4_0";
  inputs."yaml-v0_5_0".url = "path:./v0_5_0";
  inputs."yaml-v0_5_1".url = "path:./v0_5_1";
  inputs."yaml-v0_6_0".url = "path:./v0_6_0";
  inputs."yaml-v0_6_1".url = "path:./v0_6_1";
  inputs."yaml-v0_6_2".url = "path:./v0_6_2";
  inputs."yaml-v0_6_3".url = "path:./v0_6_3";
  inputs."yaml-v0_7_0".url = "path:./v0_7_0";
  inputs."yaml-v0_8_0".url = "path:./v0_8_0";
  inputs."yaml-v0_9_0".url = "path:./v0_9_0";
  inputs."yaml-v0_9_1".url = "path:./v0_9_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}