{
  description = ''JSON serialization framework'';
  inputs."eminim-master".url = "path:./master";
  inputs."eminim-v0_2_0".url = "path:./v0_2_0";
  inputs."eminim-v0_3_0".url = "path:./v0_3_0";
  inputs."eminim-v0_4_0".url = "path:./v0_4_0";
  inputs."eminim-v1_0_0".url = "path:./v1_0_0";
  inputs."eminim-v1_1_0".url = "path:./v1_1_0";
  inputs."eminim-v1_2_0".url = "path:./v1_2_0";
  inputs."eminim-v1_3_0".url = "path:./v1_3_0";
  inputs."eminim-v1_4_0".url = "path:./v1_4_0";
  inputs."eminim-v1_5_0".url = "path:./v1_5_0";
  inputs."eminim-v1_6_0".url = "path:./v1_6_0";
  inputs."eminim-v1_7_0".url = "path:./v1_7_0";
  inputs."eminim-v1_8_0".url = "path:./v1_8_0";
  inputs."eminim-v1_9_0".url = "path:./v1_9_0";
  inputs."eminim-v2_0_0".url = "path:./v2_0_0";
  inputs."eminim-v2_0_1".url = "path:./v2_0_1";
  inputs."eminim-v2_0_2".url = "path:./v2_0_2";
  inputs."eminim-v2_0_3".url = "path:./v2_0_3";
  inputs."eminim-v2_1_0".url = "path:./v2_1_0";
  inputs."eminim-v2_2_0".url = "path:./v2_2_0";
  inputs."eminim-v2_3_0".url = "path:./v2_3_0";
  inputs."eminim-v2_3_1".url = "path:./v2_3_1";
  inputs."eminim-v2_4_0".url = "path:./v2_4_0";
  inputs."eminim-v2_5_0".url = "path:./v2_5_0";
  inputs."eminim-v2_5_1".url = "path:./v2_5_1";
  inputs."eminim-v2_6_0".url = "path:./v2_6_0";
  inputs."eminim-v2_7_0".url = "path:./v2_7_0";
  inputs."eminim-v2_8_0".url = "path:./v2_8_0";
  inputs."eminim-v2_8_1".url = "path:./v2_8_1";
  inputs."eminim-v2_8_2".url = "path:./v2_8_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}