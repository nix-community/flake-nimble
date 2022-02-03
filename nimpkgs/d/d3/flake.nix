{
  description = ''A D3.js wrapper for Nim'';
  inputs."d3-master".url = "path:./master";
  inputs."d3-v0_1_0".url = "path:./v0_1_0";
  inputs."d3-v0_1_1".url = "path:./v0_1_1";
  inputs."d3-v0_1_2".url = "path:./v0_1_2";
  inputs."d3-v0_1_3".url = "path:./v0_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}