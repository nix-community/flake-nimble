{
  description = ''Graph With Weight Libary'';
  inputs.src-weightedgraph-master.flake = false;
  inputs.src-weightedgraph-master.type = "github";
  inputs.src-weightedgraph-master.owner = "AzamShafiul";
  inputs.src-weightedgraph-master.repo = "weighted_graph";
  inputs.src-weightedgraph-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-weightedgraph-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-weightedgraph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-weightedgraph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}