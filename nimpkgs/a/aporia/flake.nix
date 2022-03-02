{
  description = ''A Nim IDE.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."aporia-master".type = "github";
  inputs."aporia-master".owner = "riinr";
  inputs."aporia-master".repo = "flake-nimble";
  inputs."aporia-master".ref = "flake-pinning";
  inputs."aporia-master".dir = "nimpkgs/a/aporia/master";
  inputs."aporia-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."aporia-v0_1".type = "github";
  inputs."aporia-v0_1".owner = "riinr";
  inputs."aporia-v0_1".repo = "flake-nimble";
  inputs."aporia-v0_1".ref = "flake-pinning";
  inputs."aporia-v0_1".dir = "nimpkgs/a/aporia/v0_1";
  inputs."aporia-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."aporia-v0_1_1".type = "github";
  inputs."aporia-v0_1_1".owner = "riinr";
  inputs."aporia-v0_1_1".repo = "flake-nimble";
  inputs."aporia-v0_1_1".ref = "flake-pinning";
  inputs."aporia-v0_1_1".dir = "nimpkgs/a/aporia/v0_1_1";
  inputs."aporia-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."aporia-v0_1_1_0".type = "github";
  inputs."aporia-v0_1_1_0".owner = "riinr";
  inputs."aporia-v0_1_1_0".repo = "flake-nimble";
  inputs."aporia-v0_1_1_0".ref = "flake-pinning";
  inputs."aporia-v0_1_1_0".dir = "nimpkgs/a/aporia/v0_1_1_0";
  inputs."aporia-v0_1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."aporia-v0_4_0".type = "github";
  inputs."aporia-v0_4_0".owner = "riinr";
  inputs."aporia-v0_4_0".repo = "flake-nimble";
  inputs."aporia-v0_4_0".ref = "flake-pinning";
  inputs."aporia-v0_4_0".dir = "nimpkgs/a/aporia/v0_4_0";
  inputs."aporia-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."aporia-v0_4_1".type = "github";
  inputs."aporia-v0_4_1".owner = "riinr";
  inputs."aporia-v0_4_1".repo = "flake-nimble";
  inputs."aporia-v0_4_1".ref = "flake-pinning";
  inputs."aporia-v0_4_1".dir = "nimpkgs/a/aporia/v0_4_1";
  inputs."aporia-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."aporia-v0_4_2".type = "github";
  inputs."aporia-v0_4_2".owner = "riinr";
  inputs."aporia-v0_4_2".repo = "flake-nimble";
  inputs."aporia-v0_4_2".ref = "flake-pinning";
  inputs."aporia-v0_4_2".dir = "nimpkgs/a/aporia/v0_4_2";
  inputs."aporia-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}