{
  description = ''An implementation of the tabu search heuristic in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-syphus-master.flake = false;
  inputs.src-syphus-master.type = "github";
  inputs.src-syphus-master.owner = "makingspace";
  inputs.src-syphus-master.repo = "syphus";
  inputs.src-syphus-master.ref = "refs/heads/master";
  inputs.src-syphus-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-syphus-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syphus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-syphus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}