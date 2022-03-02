{
  description = ''Simple terminal ping graph'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pinggraph-master".type = "github";
  inputs."pinggraph-master".owner = "riinr";
  inputs."pinggraph-master".repo = "flake-nimble";
  inputs."pinggraph-master".ref = "flake-pinning";
  inputs."pinggraph-master".dir = "nimpkgs/p/pinggraph/master";
  inputs."pinggraph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pinggraph-v0_1_0".type = "github";
  inputs."pinggraph-v0_1_0".owner = "riinr";
  inputs."pinggraph-v0_1_0".repo = "flake-nimble";
  inputs."pinggraph-v0_1_0".ref = "flake-pinning";
  inputs."pinggraph-v0_1_0".dir = "nimpkgs/p/pinggraph/v0_1_0";
  inputs."pinggraph-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pinggraph-v0_1_1".type = "github";
  inputs."pinggraph-v0_1_1".owner = "riinr";
  inputs."pinggraph-v0_1_1".repo = "flake-nimble";
  inputs."pinggraph-v0_1_1".ref = "flake-pinning";
  inputs."pinggraph-v0_1_1".dir = "nimpkgs/p/pinggraph/v0_1_1";
  inputs."pinggraph-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pinggraph-v0_1_2".type = "github";
  inputs."pinggraph-v0_1_2".owner = "riinr";
  inputs."pinggraph-v0_1_2".repo = "flake-nimble";
  inputs."pinggraph-v0_1_2".ref = "flake-pinning";
  inputs."pinggraph-v0_1_2".dir = "nimpkgs/p/pinggraph/v0_1_2";
  inputs."pinggraph-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pinggraph-v0_1_3".type = "github";
  inputs."pinggraph-v0_1_3".owner = "riinr";
  inputs."pinggraph-v0_1_3".repo = "flake-nimble";
  inputs."pinggraph-v0_1_3".ref = "flake-pinning";
  inputs."pinggraph-v0_1_3".dir = "nimpkgs/p/pinggraph/v0_1_3";
  inputs."pinggraph-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pinggraph-v0_1_4".type = "github";
  inputs."pinggraph-v0_1_4".owner = "riinr";
  inputs."pinggraph-v0_1_4".repo = "flake-nimble";
  inputs."pinggraph-v0_1_4".ref = "flake-pinning";
  inputs."pinggraph-v0_1_4".dir = "nimpkgs/p/pinggraph/v0_1_4";
  inputs."pinggraph-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}