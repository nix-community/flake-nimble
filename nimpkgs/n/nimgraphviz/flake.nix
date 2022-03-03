{
  description = ''Nim bindings for the GraphViz tool and the DOT graph language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimgraphviz-master".type = "github";
  inputs."nimgraphviz-master".owner = "riinr";
  inputs."nimgraphviz-master".repo = "flake-nimble";
  inputs."nimgraphviz-master".ref = "flake-pinning";
  inputs."nimgraphviz-master".dir = "nimpkgs/n/nimgraphviz/master";
  inputs."nimgraphviz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphviz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgraphviz-v3_0".type = "github";
  inputs."nimgraphviz-v3_0".owner = "riinr";
  inputs."nimgraphviz-v3_0".repo = "flake-nimble";
  inputs."nimgraphviz-v3_0".ref = "flake-pinning";
  inputs."nimgraphviz-v3_0".dir = "nimpkgs/n/nimgraphviz/v3_0";
  inputs."nimgraphviz-v3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphviz-v3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}