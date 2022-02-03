{
  description = ''A command-line YouTube player and more'';
  inputs."nimcoon-master".url = "path:./master";
  inputs."nimcoon-0_1_0".url = "path:./0_1_0";
  inputs."nimcoon-0_2_0".url = "path:./0_2_0";
  inputs."nimcoon-0_2_1".url = "path:./0_2_1";
  inputs."nimcoon-0_2_2".url = "path:./0_2_2";
  inputs."nimcoon-0_3_0".url = "path:./0_3_0";
  inputs."nimcoon-0_3_1".url = "path:./0_3_1";
  inputs."nimcoon-0_3_2".url = "path:./0_3_2";
  inputs."nimcoon-0_4_0".url = "path:./0_4_0";
  inputs."nimcoon-0_5_0".url = "path:./0_5_0";
  inputs."nimcoon-0_5_1".url = "path:./0_5_1";
  inputs."nimcoon-0_6_0".url = "path:./0_6_0";
  inputs."nimcoon-0_6_1".url = "path:./0_6_1";
  inputs."nimcoon-0_7_0".url = "path:./0_7_0";
  inputs."nimcoon-0_8_0".url = "path:./0_8_0";
  inputs."nimcoon-0_8_1".url = "path:./0_8_1";
  inputs."nimcoon-0_8_2".url = "path:./0_8_2";
  inputs."nimcoon-0_8_3".url = "path:./0_8_3";
  inputs."nimcoon-0_9_0".url = "path:./0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}