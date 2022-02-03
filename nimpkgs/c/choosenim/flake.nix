{
  description = ''The Nim toolchain installer.'';
  inputs."choosenim-master".url = "path:./master";
  inputs."choosenim-v0_1_0".url = "path:./v0_1_0";
  inputs."choosenim-v0_2_0".url = "path:./v0_2_0";
  inputs."choosenim-v0_2_2".url = "path:./v0_2_2";
  inputs."choosenim-v0_3_0".url = "path:./v0_3_0";
  inputs."choosenim-v0_3_2".url = "path:./v0_3_2";
  inputs."choosenim-v0_4_0".url = "path:./v0_4_0";
  inputs."choosenim-v0_5_0".url = "path:./v0_5_0";
  inputs."choosenim-v0_5_1".url = "path:./v0_5_1";
  inputs."choosenim-v0_6_0".url = "path:./v0_6_0";
  inputs."choosenim-v0_6_1-20201016".url = "path:./v0_6_1-20201016";
  inputs."choosenim-v0_7_0".url = "path:./v0_7_0";
  inputs."choosenim-v0_7_0-20201017".url = "path:./v0_7_0-20201017";
  inputs."choosenim-v0_7_2".url = "path:./v0_7_2";
  inputs."choosenim-v0_7_4".url = "path:./v0_7_4";
  inputs."choosenim-v0_7_5-20201029-edc69bd".url = "path:./v0_7_5-20201029-edc69bd";
  inputs."choosenim-v0_7_5-20210102-f338473".url = "path:./v0_7_5-20210102-f338473";
  inputs."choosenim-v0_8_0".url = "path:./v0_8_0";
  inputs."choosenim-v0_8_2".url = "path:./v0_8_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}