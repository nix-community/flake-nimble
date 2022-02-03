{
  description = ''Root finding functions for Nim'';
  inputs."roots-master".url = "path:./master";
  inputs."roots-v0_1".url = "path:./v0_1";
  inputs."roots-v0_1_1".url = "path:./v0_1_1";
  inputs."roots-v0_1_2".url = "path:./v0_1_2";
  inputs."roots-v0_2_0".url = "path:./v0_2_0";
  inputs."roots-v0_2_0_1".url = "path:./v0_2_0_1";
  inputs."roots-v0_2_1".url = "path:./v0_2_1";
  inputs."roots-v0_3_0".url = "path:./v0_3_0";
  inputs."roots-v0_3_1".url = "path:./v0_3_1";
  inputs."roots-v0_3_2".url = "path:./v0_3_2";
  inputs."roots-v0_4_0".url = "path:./v0_4_0";
  inputs."roots-v0_4_1".url = "path:./v0_4_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}