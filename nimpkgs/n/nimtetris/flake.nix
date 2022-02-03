{
  description = ''A simple terminal tetris in Nim'';
  inputs."nimtetris-master".url = "path:./master";
  inputs."nimtetris-v0_1_0".url = "path:./v0_1_0";
  inputs."nimtetris-v0_1_1".url = "path:./v0_1_1";
  inputs."nimtetris-v0_1_2".url = "path:./v0_1_2";
  inputs."nimtetris-v0_1_3".url = "path:./v0_1_3";
  inputs."nimtetris-v0_2_0".url = "path:./v0_2_0";
  inputs."nimtetris-v0_3_0".url = "path:./v0_3_0";
  inputs."nimtetris-v0_3_1".url = "path:./v0_3_1";
  inputs."nimtetris-v1_0_0".url = "path:./v1_0_0";
  inputs."nimtetris-v1_1_0".url = "path:./v1_1_0";
  inputs."nimtetris-v1_2_0".url = "path:./v1_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}