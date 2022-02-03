{
  description = ''Command-line utility for Tangling of Org mode documents'';
  inputs."ntangle-master".url = "path:./master";
  inputs."ntangle-v0_1_0".url = "path:./v0_1_0";
  inputs."ntangle-v0_1_1".url = "path:./v0_1_1";
  inputs."ntangle-v0_2_0".url = "path:./v0_2_0";
  inputs."ntangle-v0_2_1".url = "path:./v0_2_1";
  inputs."ntangle-v0_2_2".url = "path:./v0_2_2";
  inputs."ntangle-v0_3_0".url = "path:./v0_3_0";
  inputs."ntangle-v0_4_0".url = "path:./v0_4_0";
  inputs."ntangle-v0_4_1".url = "path:./v0_4_1";
  inputs."ntangle-v0_4_2".url = "path:./v0_4_2";
  inputs."ntangle-v0_4_3".url = "path:./v0_4_3";
  inputs."ntangle-v0_5_0".url = "path:./v0_5_0";
  inputs."ntangle-v0_5_1".url = "path:./v0_5_1";
  inputs."ntangle-v0_6_0".url = "path:./v0_6_0";
  inputs."ntangle-v0_6_1".url = "path:./v0_6_1";
  inputs."ntangle-v0_6_2".url = "path:./v0_6_2";
  inputs."ntangle-v0_6_3".url = "path:./v0_6_3";
  inputs."ntangle-v0_6_4".url = "path:./v0_6_4";
  inputs."ntangle-v0_6_5".url = "path:./v0_6_5";
  inputs."ntangle-v0_6_6".url = "path:./v0_6_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}