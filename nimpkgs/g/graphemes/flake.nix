{
  description = ''Grapheme aware string handling (Unicode tr29)'';
  inputs."graphemes-master".url = "path:./master";
  inputs."graphemes-v0_1_0".url = "path:./v0_1_0";
  inputs."graphemes-v0_1_1".url = "path:./v0_1_1";
  inputs."graphemes-v0_1_2".url = "path:./v0_1_2";
  inputs."graphemes-v0_1_3".url = "path:./v0_1_3";
  inputs."graphemes-v0_1_4".url = "path:./v0_1_4";
  inputs."graphemes-v0_1_5".url = "path:./v0_1_5";
  inputs."graphemes-v0_10_0".url = "path:./v0_10_0";
  inputs."graphemes-v0_2_0".url = "path:./v0_2_0";
  inputs."graphemes-v0_3_0".url = "path:./v0_3_0";
  inputs."graphemes-v0_4_0".url = "path:./v0_4_0";
  inputs."graphemes-v0_4_1".url = "path:./v0_4_1";
  inputs."graphemes-v0_5_0".url = "path:./v0_5_0";
  inputs."graphemes-v0_6_0".url = "path:./v0_6_0";
  inputs."graphemes-v0_7_0".url = "path:./v0_7_0";
  inputs."graphemes-v0_8_0".url = "path:./v0_8_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}