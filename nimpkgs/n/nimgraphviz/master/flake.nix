{
  description = ''Nim bindings for the GraphViz tool and the DOT graph language'';
  inputs.src-nimgraphviz-master.flake = false;
  inputs.src-nimgraphviz-master.type = "github";
  inputs.src-nimgraphviz-master.owner = "Aveheuzed";
  inputs.src-nimgraphviz-master.repo = "nimgraphviz";
  inputs.src-nimgraphviz-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimgraphviz-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgraphviz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgraphviz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}