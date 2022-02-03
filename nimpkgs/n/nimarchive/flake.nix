{
  description = ''libarchive wrapper for Nim'';
  inputs."nimarchive-master".url = "path:./master";
  inputs."nimarchive-v0_1_1".url = "path:./v0_1_1";
  inputs."nimarchive-v0_1_2".url = "path:./v0_1_2";
  inputs."nimarchive-v0_1_3".url = "path:./v0_1_3";
  inputs."nimarchive-v0_1_4".url = "path:./v0_1_4";
  inputs."nimarchive-v0_2_0".url = "path:./v0_2_0";
  inputs."nimarchive-v0_2_1".url = "path:./v0_2_1";
  inputs."nimarchive-v0_3_0".url = "path:./v0_3_0";
  inputs."nimarchive-v0_3_1".url = "path:./v0_3_1";
  inputs."nimarchive-v0_3_2".url = "path:./v0_3_2";
  inputs."nimarchive-v0_3_3".url = "path:./v0_3_3";
  inputs."nimarchive-v0_3_4".url = "path:./v0_3_4";
  inputs."nimarchive-v0_3_5".url = "path:./v0_3_5";
  inputs."nimarchive-v0_3_6".url = "path:./v0_3_6";
  inputs."nimarchive-v0_4_0".url = "path:./v0_4_0";
  inputs."nimarchive-v0_4_1".url = "path:./v0_4_1";
  inputs."nimarchive-v0_5_0".url = "path:./v0_5_0";
  inputs."nimarchive-v0_5_1".url = "path:./v0_5_1";
  inputs."nimarchive-v0_5_2".url = "path:./v0_5_2";
  inputs."nimarchive-v0_5_3".url = "path:./v0_5_3";
  inputs."nimarchive-v0_5_4".url = "path:./v0_5_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}