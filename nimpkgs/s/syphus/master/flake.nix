{
  description = ''An implementation of the tabu search heuristic in Nim.'';
  inputs.src-syphus-master.flake = false;
  inputs.src-syphus-master.type = "github";
  inputs.src-syphus-master.owner = "makingspace";
  inputs.src-syphus-master.repo = "syphus";
  inputs.src-syphus-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-syphus-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syphus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-syphus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}