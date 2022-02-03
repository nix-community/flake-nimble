{
  description = ''An alternative DateTime implementation'';
  inputs."systimes-master".url = "path:./master";
  inputs."systimes-v0_2_0".url = "path:./v0_2_0";
  inputs."systimes-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}