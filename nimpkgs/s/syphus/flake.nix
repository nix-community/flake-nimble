{
  description = ''An implementation of the tabu search heuristic in Nim.'';
  inputs."syphus-master".url = "path:./master";
  inputs."syphus-0_4".url = "path:./0_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}