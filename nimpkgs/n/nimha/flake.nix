{
  description = ''Nim Home Assistant (NimHA) is a hub for combining multiple home automation devices and automating jobs'';
  inputs."nimha-master".url = "path:./master";
  inputs."nimha-v0_3_0".url = "path:./v0_3_0";
  inputs."nimha-v0_3_1".url = "path:./v0_3_1";
  inputs."nimha-v0_3_2".url = "path:./v0_3_2";
  inputs."nimha-v0_3_3".url = "path:./v0_3_3";
  inputs."nimha-v0_3_5".url = "path:./v0_3_5";
  inputs."nimha-v0_3_6".url = "path:./v0_3_6";
  inputs."nimha-v0_4_0".url = "path:./v0_4_0";
  inputs."nimha-v0_4_1".url = "path:./v0_4_1";
  inputs."nimha-v0_4_3".url = "path:./v0_4_3";
  inputs."nimha-v0_4_4".url = "path:./v0_4_4";
  inputs."nimha-v0_4_5".url = "path:./v0_4_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}