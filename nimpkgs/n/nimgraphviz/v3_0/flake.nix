{
  description = ''Nim bindings for the GraphViz tool and the DOT graph language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimgraphviz-v3_0.flake = false;
  inputs.src-nimgraphviz-v3_0.type = "github";
  inputs.src-nimgraphviz-v3_0.owner = "Aveheuzed";
  inputs.src-nimgraphviz-v3_0.repo = "nimgraphviz";
  inputs.src-nimgraphviz-v3_0.ref = "refs/tags/v3.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgraphviz-v3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgraphviz-v3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgraphviz-v3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}