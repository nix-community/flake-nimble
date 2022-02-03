{
  description = ''Nimble package manager'';
  inputs."nimble-master".url = "path:./master";
  inputs."nimble-v0_10_0".url = "path:./v0_10_0";
  inputs."nimble-v0_10_2".url = "path:./v0_10_2";
  inputs."nimble-v0_11_0".url = "path:./v0_11_0";
  inputs."nimble-v0_11_2".url = "path:./v0_11_2";
  inputs."nimble-v0_11_4".url = "path:./v0_11_4";
  inputs."nimble-v0_12_0".url = "path:./v0_12_0";
  inputs."nimble-v0_13_0".url = "path:./v0_13_0";
  inputs."nimble-v0_13_1".url = "path:./v0_13_1";
  inputs."nimble-v0_2".url = "path:./v0_2";
  inputs."nimble-v0_4".url = "path:./v0_4";
  inputs."nimble-v0_6".url = "path:./v0_6";
  inputs."nimble-v0_6_2".url = "path:./v0_6_2";
  inputs."nimble-v0_6_4".url = "path:./v0_6_4";
  inputs."nimble-v0_7_0".url = "path:./v0_7_0";
  inputs."nimble-v0_7_10".url = "path:./v0_7_10";
  inputs."nimble-v0_7_2".url = "path:./v0_7_2";
  inputs."nimble-v0_7_4".url = "path:./v0_7_4";
  inputs."nimble-v0_7_6".url = "path:./v0_7_6";
  inputs."nimble-v0_7_8".url = "path:./v0_7_8";
  inputs."nimble-v0_8_0".url = "path:./v0_8_0";
  inputs."nimble-v0_8_10".url = "path:./v0_8_10";
  inputs."nimble-v0_8_2".url = "path:./v0_8_2";
  inputs."nimble-v0_8_4".url = "path:./v0_8_4";
  inputs."nimble-v0_8_6".url = "path:./v0_8_6";
  inputs."nimble-v0_8_8".url = "path:./v0_8_8";
  inputs."nimble-v0_9_0".url = "path:./v0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}