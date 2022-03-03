{
  description = ''Monocypher'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."monocypher-master".type = "github";
  inputs."monocypher-master".owner = "riinr";
  inputs."monocypher-master".repo = "flake-nimble";
  inputs."monocypher-master".ref = "flake-pinning";
  inputs."monocypher-master".dir = "nimpkgs/m/monocypher/master";
  inputs."monocypher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monocypher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monocypher-v0_1_0".type = "github";
  inputs."monocypher-v0_1_0".owner = "riinr";
  inputs."monocypher-v0_1_0".repo = "flake-nimble";
  inputs."monocypher-v0_1_0".ref = "flake-pinning";
  inputs."monocypher-v0_1_0".dir = "nimpkgs/m/monocypher/v0_1_0";
  inputs."monocypher-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monocypher-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monocypher-v0_1_1".type = "github";
  inputs."monocypher-v0_1_1".owner = "riinr";
  inputs."monocypher-v0_1_1".repo = "flake-nimble";
  inputs."monocypher-v0_1_1".ref = "flake-pinning";
  inputs."monocypher-v0_1_1".dir = "nimpkgs/m/monocypher/v0_1_1";
  inputs."monocypher-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monocypher-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monocypher-v0_1_2".type = "github";
  inputs."monocypher-v0_1_2".owner = "riinr";
  inputs."monocypher-v0_1_2".repo = "flake-nimble";
  inputs."monocypher-v0_1_2".ref = "flake-pinning";
  inputs."monocypher-v0_1_2".dir = "nimpkgs/m/monocypher/v0_1_2";
  inputs."monocypher-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monocypher-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monocypher-v0_2_0".type = "github";
  inputs."monocypher-v0_2_0".owner = "riinr";
  inputs."monocypher-v0_2_0".repo = "flake-nimble";
  inputs."monocypher-v0_2_0".ref = "flake-pinning";
  inputs."monocypher-v0_2_0".dir = "nimpkgs/m/monocypher/v0_2_0";
  inputs."monocypher-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monocypher-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monocypher-v0_2_1".type = "github";
  inputs."monocypher-v0_2_1".owner = "riinr";
  inputs."monocypher-v0_2_1".repo = "flake-nimble";
  inputs."monocypher-v0_2_1".ref = "flake-pinning";
  inputs."monocypher-v0_2_1".dir = "nimpkgs/m/monocypher/v0_2_1";
  inputs."monocypher-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monocypher-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}