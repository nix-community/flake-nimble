{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';
  inputs."npeg-master".url = "path:./master";
  inputs."npeg-0_1_0".url = "path:./0_1_0";
  inputs."npeg-0_10_0".url = "path:./0_10_0";
  inputs."npeg-0_11_0".url = "path:./0_11_0";
  inputs."npeg-0_12_0".url = "path:./0_12_0";
  inputs."npeg-0_13_0".url = "path:./0_13_0";
  inputs."npeg-0_14_0".url = "path:./0_14_0";
  inputs."npeg-0_14_1".url = "path:./0_14_1";
  inputs."npeg-0_15_0".url = "path:./0_15_0";
  inputs."npeg-0_16_0".url = "path:./0_16_0";
  inputs."npeg-0_17_0".url = "path:./0_17_0";
  inputs."npeg-0_17_1".url = "path:./0_17_1";
  inputs."npeg-0_18_0".url = "path:./0_18_0";
  inputs."npeg-0_19_0".url = "path:./0_19_0";
  inputs."npeg-0_2_0".url = "path:./0_2_0";
  inputs."npeg-0_20_0".url = "path:./0_20_0";
  inputs."npeg-0_21_0".url = "path:./0_21_0";
  inputs."npeg-0_21_1".url = "path:./0_21_1";
  inputs."npeg-0_21_2".url = "path:./0_21_2";
  inputs."npeg-0_21_3".url = "path:./0_21_3";
  inputs."npeg-0_22_0".url = "path:./0_22_0";
  inputs."npeg-0_22_1".url = "path:./0_22_1";
  inputs."npeg-0_22_2".url = "path:./0_22_2";
  inputs."npeg-0_23_0".url = "path:./0_23_0";
  inputs."npeg-0_23_1".url = "path:./0_23_1";
  inputs."npeg-0_23_2".url = "path:./0_23_2";
  inputs."npeg-0_24_0".url = "path:./0_24_0";
  inputs."npeg-0_24_1".url = "path:./0_24_1";
  inputs."npeg-0_25_0".url = "path:./0_25_0";
  inputs."npeg-0_26_0".url = "path:./0_26_0";
  inputs."npeg-0_3_0".url = "path:./0_3_0";
  inputs."npeg-0_4_0".url = "path:./0_4_0";
  inputs."npeg-0_5_0".url = "path:./0_5_0";
  inputs."npeg-0_6_0".url = "path:./0_6_0";
  inputs."npeg-0_7_0".url = "path:./0_7_0";
  inputs."npeg-0_8_0".url = "path:./0_8_0";
  inputs."npeg-0_9_0".url = "path:./0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}