{
  description = ''Linear time regex matching'';
  inputs."regex-master".url = "path:./master";
  inputs."regex-v0_1_0".url = "path:./v0_1_0";
  inputs."regex-v0_10_0".url = "path:./v0_10_0";
  inputs."regex-v0_10_1".url = "path:./v0_10_1";
  inputs."regex-v0_11_0".url = "path:./v0_11_0";
  inputs."regex-v0_11_1".url = "path:./v0_11_1";
  inputs."regex-v0_11_2".url = "path:./v0_11_2";
  inputs."regex-v0_12_0".url = "path:./v0_12_0";
  inputs."regex-v0_13_0".url = "path:./v0_13_0";
  inputs."regex-v0_13_1".url = "path:./v0_13_1";
  inputs."regex-v0_14_0".url = "path:./v0_14_0";
  inputs."regex-v0_14_1".url = "path:./v0_14_1";
  inputs."regex-v0_15_0".url = "path:./v0_15_0";
  inputs."regex-v0_16_0".url = "path:./v0_16_0";
  inputs."regex-v0_16_1".url = "path:./v0_16_1";
  inputs."regex-v0_16_2".url = "path:./v0_16_2";
  inputs."regex-v0_17_0".url = "path:./v0_17_0";
  inputs."regex-v0_17_1".url = "path:./v0_17_1";
  inputs."regex-v0_18_0".url = "path:./v0_18_0";
  inputs."regex-v0_19_0".url = "path:./v0_19_0";
  inputs."regex-v0_2_0".url = "path:./v0_2_0";
  inputs."regex-v0_3_0".url = "path:./v0_3_0";
  inputs."regex-v0_4_0".url = "path:./v0_4_0";
  inputs."regex-v0_4_1".url = "path:./v0_4_1";
  inputs."regex-v0_5_0".url = "path:./v0_5_0";
  inputs."regex-v0_6_0".url = "path:./v0_6_0";
  inputs."regex-v0_6_1".url = "path:./v0_6_1";
  inputs."regex-v0_6_2".url = "path:./v0_6_2";
  inputs."regex-v0_6_3".url = "path:./v0_6_3";
  inputs."regex-v0_7_0".url = "path:./v0_7_0";
  inputs."regex-v0_7_1".url = "path:./v0_7_1";
  inputs."regex-v0_7_2".url = "path:./v0_7_2";
  inputs."regex-v0_7_3".url = "path:./v0_7_3";
  inputs."regex-v0_7_4".url = "path:./v0_7_4";
  inputs."regex-v0_8_0".url = "path:./v0_8_0";
  inputs."regex-v0_8_1".url = "path:./v0_8_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}