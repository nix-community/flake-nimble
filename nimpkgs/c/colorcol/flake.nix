{
  description = ''Kakoune plugin for color preview'';
  inputs."colorcol-master".url = "path:./master";
  inputs."colorcol-v0_1_1".url = "path:./v0_1_1";
  inputs."colorcol-v0_2_0".url = "path:./v0_2_0";
  inputs."colorcol-v0_3_0".url = "path:./v0_3_0";
  inputs."colorcol-v0_3_1".url = "path:./v0_3_1";
  inputs."colorcol-v0_3_2".url = "path:./v0_3_2";
  inputs."colorcol-v0_3_3".url = "path:./v0_3_3";
  inputs."colorcol-v0_3_4".url = "path:./v0_3_4";
  inputs."colorcol-v0_4_0".url = "path:./v0_4_0";
  inputs."colorcol-v0_4_1".url = "path:./v0_4_1";
  inputs."colorcol-v0_5_0".url = "path:./v0_5_0";
  inputs."colorcol-v0_5_1".url = "path:./v0_5_1";
  inputs."colorcol-v0_5_2".url = "path:./v0_5_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}