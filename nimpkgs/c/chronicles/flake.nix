{
  description = ''A crafty implementation of structured logging for Nim'';
  inputs."chronicles-master".url = "path:./master";
  inputs."chronicles-v0_10_0".url = "path:./v0_10_0";
  inputs."chronicles-v0_10_1".url = "path:./v0_10_1";
  inputs."chronicles-v0_10_2".url = "path:./v0_10_2";
  inputs."chronicles-v0_2_0".url = "path:./v0_2_0";
  inputs."chronicles-v0_2_1".url = "path:./v0_2_1";
  inputs."chronicles-v0_3_0".url = "path:./v0_3_0";
  inputs."chronicles-v0_3_1".url = "path:./v0_3_1";
  inputs."chronicles-v0_4_0".url = "path:./v0_4_0";
  inputs."chronicles-v0_4_1".url = "path:./v0_4_1";
  inputs."chronicles-v0_4_2".url = "path:./v0_4_2";
  inputs."chronicles-v0_5_0".url = "path:./v0_5_0";
  inputs."chronicles-v0_5_1".url = "path:./v0_5_1";
  inputs."chronicles-v0_5_2".url = "path:./v0_5_2";
  inputs."chronicles-v0_5_3".url = "path:./v0_5_3";
  inputs."chronicles-v0_6_0".url = "path:./v0_6_0";
  inputs."chronicles-v0_7_0".url = "path:./v0_7_0";
  inputs."chronicles-v0_7_1".url = "path:./v0_7_1";
  inputs."chronicles-v0_7_2".url = "path:./v0_7_2";
  inputs."chronicles-v0_8_0".url = "path:./v0_8_0";
  inputs."chronicles-v0_8_1".url = "path:./v0_8_1";
  inputs."chronicles-v0_9_0".url = "path:./v0_9_0";
  inputs."chronicles-v0_9_2".url = "path:./v0_9_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}