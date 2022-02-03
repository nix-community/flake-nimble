{
  description = ''Additions to the Nim's standard library, like boost for C++'';
  inputs."nimboost-master".url = "path:./master";
  inputs."nimboost-v0_0_1".url = "path:./v0_0_1";
  inputs."nimboost-v0_1_0".url = "path:./v0_1_0";
  inputs."nimboost-v0_2_0".url = "path:./v0_2_0";
  inputs."nimboost-v0_2_1".url = "path:./v0_2_1";
  inputs."nimboost-v0_3_0".url = "path:./v0_3_0";
  inputs."nimboost-v0_3_1".url = "path:./v0_3_1";
  inputs."nimboost-v0_3_2".url = "path:./v0_3_2";
  inputs."nimboost-v0_3_3".url = "path:./v0_3_3";
  inputs."nimboost-v0_3_4".url = "path:./v0_3_4";
  inputs."nimboost-v0_3_5".url = "path:./v0_3_5";
  inputs."nimboost-v0_3_6".url = "path:./v0_3_6";
  inputs."nimboost-v0_4_0".url = "path:./v0_4_0";
  inputs."nimboost-v0_4_1".url = "path:./v0_4_1";
  inputs."nimboost-v0_4_2".url = "path:./v0_4_2";
  inputs."nimboost-v0_4_3".url = "path:./v0_4_3";
  inputs."nimboost-v0_4_4".url = "path:./v0_4_4";
  inputs."nimboost-v0_4_5".url = "path:./v0_4_5";
  inputs."nimboost-v0_4_8".url = "path:./v0_4_8";
  inputs."nimboost-v0_5_0".url = "path:./v0_5_0";
  inputs."nimboost-v0_5_1".url = "path:./v0_5_1";
  inputs."nimboost-v0_5_3".url = "path:./v0_5_3";
  inputs."nimboost-v0_5_4".url = "path:./v0_5_4";
  inputs."nimboost-v0_5_5".url = "path:./v0_5_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}