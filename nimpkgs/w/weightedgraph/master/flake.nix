{
  description = ''Graph With Weight Libary'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-weightedgraph-master.flake = false;
  inputs.src-weightedgraph-master.type = "github";
  inputs.src-weightedgraph-master.owner = "AzamShafiul";
  inputs.src-weightedgraph-master.repo = "weighted_graph";
  inputs.src-weightedgraph-master.ref = "refs/heads/master";
  inputs.src-weightedgraph-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-weightedgraph-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-weightedgraph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-weightedgraph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}