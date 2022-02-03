{
  description = ''Common unicode operations'';
  inputs."unicodeplus-master".url = "path:./master";
  inputs."unicodeplus-v0_1_0".url = "path:./v0_1_0";
  inputs."unicodeplus-v0_1_1".url = "path:./v0_1_1";
  inputs."unicodeplus-v0_2_0".url = "path:./v0_2_0";
  inputs."unicodeplus-v0_3_0".url = "path:./v0_3_0";
  inputs."unicodeplus-v0_3_1".url = "path:./v0_3_1";
  inputs."unicodeplus-v0_3_2".url = "path:./v0_3_2";
  inputs."unicodeplus-v0_4_0".url = "path:./v0_4_0";
  inputs."unicodeplus-v0_5_0".url = "path:./v0_5_0";
  inputs."unicodeplus-v0_5_1".url = "path:./v0_5_1";
  inputs."unicodeplus-v0_6_0".url = "path:./v0_6_0";
  inputs."unicodeplus-v0_8_0".url = "path:./v0_8_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}