{
  description = ''A collection of geometry utilities for nim'';
  inputs."geometryutils-master".url = "path:./master";
  inputs."geometryutils-v1_1_0".url = "path:./v1_1_0";
  inputs."geometryutils-v1_2_0".url = "path:./v1_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}