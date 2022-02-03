{
  description = ''Method & assignment cascades for Nim, inspired by Smalltalk & Dart.'';
  inputs."cascade-master".url = "path:./master";
  inputs."cascade-v0_2_0".url = "path:./v0_2_0";
  inputs."cascade-v1_0_0".url = "path:./v1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}