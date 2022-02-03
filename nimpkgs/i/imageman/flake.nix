{
  description = ''Image manipulation library'';
  inputs."imageman-master".url = "path:./master";
  inputs."imageman-v0_1_0".url = "path:./v0_1_0";
  inputs."imageman-v0_2_0".url = "path:./v0_2_0";
  inputs."imageman-v0_2_1".url = "path:./v0_2_1";
  inputs."imageman-v0_2_2".url = "path:./v0_2_2";
  inputs."imageman-v0_3_0".url = "path:./v0_3_0";
  inputs."imageman-v0_4_0".url = "path:./v0_4_0";
  inputs."imageman-v0_5_0".url = "path:./v0_5_0";
  inputs."imageman-v0_5_1".url = "path:./v0_5_1";
  inputs."imageman-v0_6_0".url = "path:./v0_6_0";
  inputs."imageman-v0_6_1".url = "path:./v0_6_1";
  inputs."imageman-v0_6_2".url = "path:./v0_6_2";
  inputs."imageman-v0_6_3".url = "path:./v0_6_3";
  inputs."imageman-v0_6_4".url = "path:./v0_6_4";
  inputs."imageman-v0_6_5".url = "path:./v0_6_5";
  inputs."imageman-v0_7_0".url = "path:./v0_7_0";
  inputs."imageman-v0_7_1".url = "path:./v0_7_1";
  inputs."imageman-v0_7_2".url = "path:./v0_7_2";
  inputs."imageman-v0_7_3".url = "path:./v0_7_3";
  inputs."imageman-v0_7_4".url = "path:./v0_7_4";
  inputs."imageman-v0_7_5".url = "path:./v0_7_5";
  inputs."imageman-v0_7_6".url = "path:./v0_7_6";
  inputs."imageman-v0_8_0".url = "path:./v0_8_0";
  inputs."imageman-v0_8_1".url = "path:./v0_8_1";
  inputs."imageman-v0_8_2".url = "path:./v0_8_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}