{
  description = ''Graph data structure library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."patgraph-master".type = "github";
  inputs."patgraph-master".owner = "riinr";
  inputs."patgraph-master".repo = "flake-nimble";
  inputs."patgraph-master".ref = "flake-pinning";
  inputs."patgraph-master".dir = "nimpkgs/p/patgraph/master";
  inputs."patgraph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patgraph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."patgraph-v0_1_0".type = "github";
  inputs."patgraph-v0_1_0".owner = "riinr";
  inputs."patgraph-v0_1_0".repo = "flake-nimble";
  inputs."patgraph-v0_1_0".ref = "flake-pinning";
  inputs."patgraph-v0_1_0".dir = "nimpkgs/p/patgraph/v0_1_0";
  inputs."patgraph-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patgraph-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."patgraph-v0_2_0".type = "github";
  inputs."patgraph-v0_2_0".owner = "riinr";
  inputs."patgraph-v0_2_0".repo = "flake-nimble";
  inputs."patgraph-v0_2_0".ref = "flake-pinning";
  inputs."patgraph-v0_2_0".dir = "nimpkgs/p/patgraph/v0_2_0";
  inputs."patgraph-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patgraph-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}