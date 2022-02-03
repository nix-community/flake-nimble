{
  description = ''The Ultimate Raylib gaming library wrapper'';
  inputs."nimraylib_now-master".url = "path:./master";
  inputs."nimraylib_now-v0_10_0".url = "path:./v0_10_0";
  inputs."nimraylib_now-v0_12_0".url = "path:./v0_12_0";
  inputs."nimraylib_now-v0_12_1".url = "path:./v0_12_1";
  inputs."nimraylib_now-v0_12_2".url = "path:./v0_12_2";
  inputs."nimraylib_now-v0_12_3".url = "path:./v0_12_3";
  inputs."nimraylib_now-v0_12_4".url = "path:./v0_12_4";
  inputs."nimraylib_now-v0_12_5".url = "path:./v0_12_5";
  inputs."nimraylib_now-v0_13_0".url = "path:./v0_13_0";
  inputs."nimraylib_now-v0_13_1".url = "path:./v0_13_1";
  inputs."nimraylib_now-v0_13_2".url = "path:./v0_13_2";
  inputs."nimraylib_now-v0_14_0".url = "path:./v0_14_0";
  inputs."nimraylib_now-v0_14_1".url = "path:./v0_14_1";
  inputs."nimraylib_now-v0_14_2".url = "path:./v0_14_2";
  inputs."nimraylib_now-v0_3_0".url = "path:./v0_3_0";
  inputs."nimraylib_now-v0_4_0".url = "path:./v0_4_0";
  inputs."nimraylib_now-v0_5_0".url = "path:./v0_5_0";
  inputs."nimraylib_now-v0_6_0".url = "path:./v0_6_0";
  inputs."nimraylib_now-v0_7_0".url = "path:./v0_7_0";
  inputs."nimraylib_now-v0_8_0".url = "path:./v0_8_0";
  inputs."nimraylib_now-v0_9_0".url = "path:./v0_9_0";
  inputs."nimraylib_now-v0_9_1".url = "path:./v0_9_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}