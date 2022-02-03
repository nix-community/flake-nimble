{
  description = ''Fonts, Typesetting and Rasterization.'';
  inputs."typography-master".url = "path:./master";
  inputs."typography-0_2_0".url = "path:./0_2_0";
  inputs."typography-0_2_1".url = "path:./0_2_1";
  inputs."typography-0_2_2".url = "path:./0_2_2";
  inputs."typography-0_2_3".url = "path:./0_2_3";
  inputs."typography-0_3_0".url = "path:./0_3_0";
  inputs."typography-0_3_1".url = "path:./0_3_1";
  inputs."typography-0_3_2".url = "path:./0_3_2";
  inputs."typography-0_3_3".url = "path:./0_3_3";
  inputs."typography-0_6_0".url = "path:./0_6_0";
  inputs."typography-0_7_0".url = "path:./0_7_0";
  inputs."typography-0_7_1".url = "path:./0_7_1";
  inputs."typography-0_7_10".url = "path:./0_7_10";
  inputs."typography-0_7_11".url = "path:./0_7_11";
  inputs."typography-0_7_12".url = "path:./0_7_12";
  inputs."typography-0_7_13".url = "path:./0_7_13";
  inputs."typography-0_7_2".url = "path:./0_7_2";
  inputs."typography-0_7_3".url = "path:./0_7_3";
  inputs."typography-0_7_4".url = "path:./0_7_4";
  inputs."typography-0_7_5".url = "path:./0_7_5";
  inputs."typography-0_7_6".url = "path:./0_7_6";
  inputs."typography-0_7_7".url = "path:./0_7_7";
  inputs."typography-0_7_8".url = "path:./0_7_8";
  inputs."typography-0_7_9".url = "path:./0_7_9";
  inputs."typography-v0_2_3".url = "path:./v0_2_3";
  inputs."typography-v0_2_4".url = "path:./v0_2_4";
  inputs."typography-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}