{
  description = ''Various collections and utilities'';
  inputs."collections-master".url = "path:./master";
  inputs."collections-v0_0_2".url = "path:./v0_0_2";
  inputs."collections-v0_1_2".url = "path:./v0_1_2";
  inputs."collections-v0_3_0".url = "path:./v0_3_0";
  inputs."collections-v0_3_1".url = "path:./v0_3_1";
  inputs."collections-v0_3_2".url = "path:./v0_3_2";
  inputs."collections-v0_3_3".url = "path:./v0_3_3";
  inputs."collections-v0_3_4".url = "path:./v0_3_4";
  inputs."collections-v0_5_0".url = "path:./v0_5_0";
  inputs."collections-v0_5_1".url = "path:./v0_5_1";
  inputs."collections-v0_5_2".url = "path:./v0_5_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}