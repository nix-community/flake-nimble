{
  description = ''Structural sharing data structure of lists and maps.'';
  inputs."ternary_tree-master".url = "path:./master";
  inputs."ternary_tree-v0_1_0".url = "path:./v0_1_0";
  inputs."ternary_tree-v0_1_1".url = "path:./v0_1_1";
  inputs."ternary_tree-v0_1_10".url = "path:./v0_1_10";
  inputs."ternary_tree-v0_1_11".url = "path:./v0_1_11";
  inputs."ternary_tree-v0_1_12".url = "path:./v0_1_12";
  inputs."ternary_tree-v0_1_13".url = "path:./v0_1_13";
  inputs."ternary_tree-v0_1_14".url = "path:./v0_1_14";
  inputs."ternary_tree-v0_1_15".url = "path:./v0_1_15";
  inputs."ternary_tree-v0_1_16".url = "path:./v0_1_16";
  inputs."ternary_tree-v0_1_17".url = "path:./v0_1_17";
  inputs."ternary_tree-v0_1_18".url = "path:./v0_1_18";
  inputs."ternary_tree-v0_1_19".url = "path:./v0_1_19";
  inputs."ternary_tree-v0_1_2".url = "path:./v0_1_2";
  inputs."ternary_tree-v0_1_20".url = "path:./v0_1_20";
  inputs."ternary_tree-v0_1_21".url = "path:./v0_1_21";
  inputs."ternary_tree-v0_1_22".url = "path:./v0_1_22";
  inputs."ternary_tree-v0_1_23".url = "path:./v0_1_23";
  inputs."ternary_tree-v0_1_24".url = "path:./v0_1_24";
  inputs."ternary_tree-v0_1_25".url = "path:./v0_1_25";
  inputs."ternary_tree-v0_1_26".url = "path:./v0_1_26";
  inputs."ternary_tree-v0_1_27".url = "path:./v0_1_27";
  inputs."ternary_tree-v0_1_28".url = "path:./v0_1_28";
  inputs."ternary_tree-v0_1_29".url = "path:./v0_1_29";
  inputs."ternary_tree-v0_1_3".url = "path:./v0_1_3";
  inputs."ternary_tree-v0_1_30".url = "path:./v0_1_30";
  inputs."ternary_tree-v0_1_31".url = "path:./v0_1_31";
  inputs."ternary_tree-v0_1_32".url = "path:./v0_1_32";
  inputs."ternary_tree-v0_1_33".url = "path:./v0_1_33";
  inputs."ternary_tree-v0_1_4".url = "path:./v0_1_4";
  inputs."ternary_tree-v0_1_5".url = "path:./v0_1_5";
  inputs."ternary_tree-v0_1_6".url = "path:./v0_1_6";
  inputs."ternary_tree-v0_1_7".url = "path:./v0_1_7";
  inputs."ternary_tree-v0_1_8".url = "path:./v0_1_8";
  inputs."ternary_tree-v0_1_9".url = "path:./v0_1_9";
  inputs."ternary_tree-v0_2_0".url = "path:./v0_2_0";
  inputs."ternary_tree-v0_2_1".url = "path:./v0_2_1";
  inputs."ternary_tree-v0_2_2".url = "path:./v0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}