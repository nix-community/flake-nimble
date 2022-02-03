{
  description = ''meowhash wrapper for Nim'';
  inputs."meow-master".url = "path:./master";
  inputs."meow-0_1_0".url = "path:./0_1_0";
  inputs."meow-0_2_0".url = "path:./0_2_0";
  inputs."meow-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}