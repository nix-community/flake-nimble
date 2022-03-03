{
  description = ''Mustache in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mustache-master".type = "github";
  inputs."mustache-master".owner = "riinr";
  inputs."mustache-master".repo = "flake-nimble";
  inputs."mustache-master".ref = "flake-pinning";
  inputs."mustache-master".dir = "nimpkgs/m/mustache/master";
  inputs."mustache-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_1_0".type = "github";
  inputs."mustache-v0_1_0".owner = "riinr";
  inputs."mustache-v0_1_0".repo = "flake-nimble";
  inputs."mustache-v0_1_0".ref = "flake-pinning";
  inputs."mustache-v0_1_0".dir = "nimpkgs/m/mustache/v0_1_0";
  inputs."mustache-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_2_0".type = "github";
  inputs."mustache-v0_2_0".owner = "riinr";
  inputs."mustache-v0_2_0".repo = "flake-nimble";
  inputs."mustache-v0_2_0".ref = "flake-pinning";
  inputs."mustache-v0_2_0".dir = "nimpkgs/m/mustache/v0_2_0";
  inputs."mustache-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_2_1".type = "github";
  inputs."mustache-v0_2_1".owner = "riinr";
  inputs."mustache-v0_2_1".repo = "flake-nimble";
  inputs."mustache-v0_2_1".ref = "flake-pinning";
  inputs."mustache-v0_2_1".dir = "nimpkgs/m/mustache/v0_2_1";
  inputs."mustache-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_2_2".type = "github";
  inputs."mustache-v0_2_2".owner = "riinr";
  inputs."mustache-v0_2_2".repo = "flake-nimble";
  inputs."mustache-v0_2_2".ref = "flake-pinning";
  inputs."mustache-v0_2_2".dir = "nimpkgs/m/mustache/v0_2_2";
  inputs."mustache-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_3_0".type = "github";
  inputs."mustache-v0_3_0".owner = "riinr";
  inputs."mustache-v0_3_0".repo = "flake-nimble";
  inputs."mustache-v0_3_0".ref = "flake-pinning";
  inputs."mustache-v0_3_0".dir = "nimpkgs/m/mustache/v0_3_0";
  inputs."mustache-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_3_1".type = "github";
  inputs."mustache-v0_3_1".owner = "riinr";
  inputs."mustache-v0_3_1".repo = "flake-nimble";
  inputs."mustache-v0_3_1".ref = "flake-pinning";
  inputs."mustache-v0_3_1".dir = "nimpkgs/m/mustache/v0_3_1";
  inputs."mustache-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_3_2".type = "github";
  inputs."mustache-v0_3_2".owner = "riinr";
  inputs."mustache-v0_3_2".repo = "flake-nimble";
  inputs."mustache-v0_3_2".ref = "flake-pinning";
  inputs."mustache-v0_3_2".dir = "nimpkgs/m/mustache/v0_3_2";
  inputs."mustache-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_4_0".type = "github";
  inputs."mustache-v0_4_0".owner = "riinr";
  inputs."mustache-v0_4_0".repo = "flake-nimble";
  inputs."mustache-v0_4_0".ref = "flake-pinning";
  inputs."mustache-v0_4_0".dir = "nimpkgs/m/mustache/v0_4_0";
  inputs."mustache-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_4_1".type = "github";
  inputs."mustache-v0_4_1".owner = "riinr";
  inputs."mustache-v0_4_1".repo = "flake-nimble";
  inputs."mustache-v0_4_1".ref = "flake-pinning";
  inputs."mustache-v0_4_1".dir = "nimpkgs/m/mustache/v0_4_1";
  inputs."mustache-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_4_2".type = "github";
  inputs."mustache-v0_4_2".owner = "riinr";
  inputs."mustache-v0_4_2".repo = "flake-nimble";
  inputs."mustache-v0_4_2".ref = "flake-pinning";
  inputs."mustache-v0_4_2".dir = "nimpkgs/m/mustache/v0_4_2";
  inputs."mustache-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mustache-v0_4_3".type = "github";
  inputs."mustache-v0_4_3".owner = "riinr";
  inputs."mustache-v0_4_3".repo = "flake-nimble";
  inputs."mustache-v0_4_3".ref = "flake-pinning";
  inputs."mustache-v0_4_3".dir = "nimpkgs/m/mustache/v0_4_3";
  inputs."mustache-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}