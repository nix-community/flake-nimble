{
  description = ''faker is a Nim package that generates fake data for you.'';
  inputs."faker-develop".url = "path:./develop";
  inputs."faker-master".url = "path:./master";
  inputs."faker-v0_10_0".url = "path:./v0_10_0";
  inputs."faker-v0_11_0".url = "path:./v0_11_0";
  inputs."faker-v0_11_1".url = "path:./v0_11_1";
  inputs."faker-v0_11_2".url = "path:./v0_11_2";
  inputs."faker-v0_12_0".url = "path:./v0_12_0";
  inputs."faker-v0_12_1".url = "path:./v0_12_1";
  inputs."faker-v0_13_0".url = "path:./v0_13_0";
  inputs."faker-v0_13_1".url = "path:./v0_13_1";
  inputs."faker-v0_13_2".url = "path:./v0_13_2";
  inputs."faker-v0_14_0".url = "path:./v0_14_0";
  inputs."faker-v0_15_0".url = "path:./v0_15_0";
  inputs."faker-v0_15_1".url = "path:./v0_15_1";
  inputs."faker-v0_2_1".url = "path:./v0_2_1";
  inputs."faker-v0_3_0".url = "path:./v0_3_0";
  inputs."faker-v0_3_1".url = "path:./v0_3_1";
  inputs."faker-v0_4_0".url = "path:./v0_4_0";
  inputs."faker-v0_5_0".url = "path:./v0_5_0";
  inputs."faker-v0_5_1".url = "path:./v0_5_1";
  inputs."faker-v0_5_2".url = "path:./v0_5_2";
  inputs."faker-v0_6_0".url = "path:./v0_6_0";
  inputs."faker-v0_7_0".url = "path:./v0_7_0";
  inputs."faker-v0_7_1".url = "path:./v0_7_1";
  inputs."faker-v0_7_2".url = "path:./v0_7_2";
  inputs."faker-v0_8_0".url = "path:./v0_8_0";
  inputs."faker-v0_9_0".url = "path:./v0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}