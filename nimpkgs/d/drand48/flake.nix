{
  description = ''Nim implementation of the standard unix drand48 pseudo random number generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."drand48-master".type = "github";
  inputs."drand48-master".owner = "riinr";
  inputs."drand48-master".repo = "flake-nimble";
  inputs."drand48-master".ref = "flake-pinning";
  inputs."drand48-master".dir = "nimpkgs/d/drand48/master";
  inputs."drand48-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."drand48-v1_0_0".type = "github";
  inputs."drand48-v1_0_0".owner = "riinr";
  inputs."drand48-v1_0_0".repo = "flake-nimble";
  inputs."drand48-v1_0_0".ref = "flake-pinning";
  inputs."drand48-v1_0_0".dir = "nimpkgs/d/drand48/v1_0_0";
  inputs."drand48-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."drand48-v1_0_1".type = "github";
  inputs."drand48-v1_0_1".owner = "riinr";
  inputs."drand48-v1_0_1".repo = "flake-nimble";
  inputs."drand48-v1_0_1".ref = "flake-pinning";
  inputs."drand48-v1_0_1".dir = "nimpkgs/d/drand48/v1_0_1";
  inputs."drand48-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."drand48-v1_1_0".type = "github";
  inputs."drand48-v1_1_0".owner = "riinr";
  inputs."drand48-v1_1_0".repo = "flake-nimble";
  inputs."drand48-v1_1_0".ref = "flake-pinning";
  inputs."drand48-v1_1_0".dir = "nimpkgs/d/drand48/v1_1_0";
  inputs."drand48-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."drand48-v1_1_1".type = "github";
  inputs."drand48-v1_1_1".owner = "riinr";
  inputs."drand48-v1_1_1".repo = "flake-nimble";
  inputs."drand48-v1_1_1".ref = "flake-pinning";
  inputs."drand48-v1_1_1".dir = "nimpkgs/d/drand48/v1_1_1";
  inputs."drand48-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."drand48-v1_1_2".type = "github";
  inputs."drand48-v1_1_2".owner = "riinr";
  inputs."drand48-v1_1_2".repo = "flake-nimble";
  inputs."drand48-v1_1_2".ref = "flake-pinning";
  inputs."drand48-v1_1_2".dir = "nimpkgs/d/drand48/v1_1_2";
  inputs."drand48-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}