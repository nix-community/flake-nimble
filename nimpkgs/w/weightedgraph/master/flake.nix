{
  description = ''Graph With Weight Libary'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-weightedgraph-master.flake = false;
  inputs.src-weightedgraph-master.type = "github";
  inputs.src-weightedgraph-master.owner = "AzamShafiul";
  inputs.src-weightedgraph-master.repo = "weighted_graph";
  inputs.src-weightedgraph-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-weightedgraph-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-weightedgraph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-weightedgraph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}