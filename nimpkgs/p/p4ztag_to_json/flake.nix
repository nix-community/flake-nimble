{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';
  inputs."p4ztag_to_json-master".url = "path:./master";
  inputs."p4ztag_to_json-v0_1_1".url = "path:./v0_1_1";
  inputs."p4ztag_to_json-v0_10_0".url = "path:./v0_10_0";
  inputs."p4ztag_to_json-v0_10_1".url = "path:./v0_10_1";
  inputs."p4ztag_to_json-v0_10_2".url = "path:./v0_10_2";
  inputs."p4ztag_to_json-v0_10_3".url = "path:./v0_10_3";
  inputs."p4ztag_to_json-v0_10_4".url = "path:./v0_10_4";
  inputs."p4ztag_to_json-v0_11_0".url = "path:./v0_11_0";
  inputs."p4ztag_to_json-v0_11_1".url = "path:./v0_11_1";
  inputs."p4ztag_to_json-v0_2_0".url = "path:./v0_2_0";
  inputs."p4ztag_to_json-v0_2_1".url = "path:./v0_2_1";
  inputs."p4ztag_to_json-v0_3_0".url = "path:./v0_3_0";
  inputs."p4ztag_to_json-v0_3_1".url = "path:./v0_3_1";
  inputs."p4ztag_to_json-v0_4_0".url = "path:./v0_4_0";
  inputs."p4ztag_to_json-v0_4_1".url = "path:./v0_4_1";
  inputs."p4ztag_to_json-v0_5_0".url = "path:./v0_5_0";
  inputs."p4ztag_to_json-v0_6_0".url = "path:./v0_6_0";
  inputs."p4ztag_to_json-v0_7_0".url = "path:./v0_7_0";
  inputs."p4ztag_to_json-v0_7_1".url = "path:./v0_7_1";
  inputs."p4ztag_to_json-v0_8_0".url = "path:./v0_8_0";
  inputs."p4ztag_to_json-v0_9_0".url = "path:./v0_9_0";
  inputs."p4ztag_to_json-v0_9_1".url = "path:./v0_9_1";
  inputs."p4ztag_to_json-v0_9_2".url = "path:./v0_9_2";
  inputs."p4ztag_to_json-v0_9_3".url = "path:./v0_9_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}