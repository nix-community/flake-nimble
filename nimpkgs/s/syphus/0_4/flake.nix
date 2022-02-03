{
  description = ''An implementation of the tabu search heuristic in Nim.'';
  inputs.src-syphus-0_4.flake = false;
  inputs.src-syphus-0_4.type = "github";
  inputs.src-syphus-0_4.owner = "makingspace";
  inputs.src-syphus-0_4.repo = "syphus";
  inputs.src-syphus-0_4.ref = "refs/tags/0.4";
  
  outputs = { self, nixpkgs, src-syphus-0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syphus-0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-syphus-0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}