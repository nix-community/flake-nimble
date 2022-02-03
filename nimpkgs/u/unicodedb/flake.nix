{
  description = ''Unicode Character Database (UCD) access for Nim'';
  inputs."unicodedb-master".url = "path:./master";
  inputs."unicodedb-v0_1".url = "path:./v0_1";
  inputs."unicodedb-v0_10_0".url = "path:./v0_10_0";
  inputs."unicodedb-v0_2".url = "path:./v0_2";
  inputs."unicodedb-v0_2_1".url = "path:./v0_2_1";
  inputs."unicodedb-v0_2_2".url = "path:./v0_2_2";
  inputs."unicodedb-v0_2_3".url = "path:./v0_2_3";
  inputs."unicodedb-v0_2_4".url = "path:./v0_2_4";
  inputs."unicodedb-v0_2_5".url = "path:./v0_2_5";
  inputs."unicodedb-v0_3_1".url = "path:./v0_3_1";
  inputs."unicodedb-v0_3_2".url = "path:./v0_3_2";
  inputs."unicodedb-v0_4_0".url = "path:./v0_4_0";
  inputs."unicodedb-v0_5_0".url = "path:./v0_5_0";
  inputs."unicodedb-v0_5_1".url = "path:./v0_5_1";
  inputs."unicodedb-v0_5_2".url = "path:./v0_5_2";
  inputs."unicodedb-v0_6_0".url = "path:./v0_6_0";
  inputs."unicodedb-v0_7_0".url = "path:./v0_7_0";
  inputs."unicodedb-v0_7_1".url = "path:./v0_7_1";
  inputs."unicodedb-v0_7_2".url = "path:./v0_7_2";
  inputs."unicodedb-v0_8_0".url = "path:./v0_8_0";
  inputs."unicodedb-v0_9_0".url = "path:./v0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}