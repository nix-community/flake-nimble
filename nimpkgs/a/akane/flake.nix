{
  description = ''The Nim asynchronous web framework.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."akane-master".type = "github";
  inputs."akane-master".owner = "riinr";
  inputs."akane-master".repo = "flake-nimble";
  inputs."akane-master".ref = "flake-pinning";
  inputs."akane-master".dir = "nimpkgs/a/akane/master";
  inputs."akane-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."akane-0_2_0".type = "github";
  inputs."akane-0_2_0".owner = "riinr";
  inputs."akane-0_2_0".repo = "flake-nimble";
  inputs."akane-0_2_0".ref = "flake-pinning";
  inputs."akane-0_2_0".dir = "nimpkgs/a/akane/0_2_0";
  inputs."akane-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."akane-v0_1_0".type = "github";
  inputs."akane-v0_1_0".owner = "riinr";
  inputs."akane-v0_1_0".repo = "flake-nimble";
  inputs."akane-v0_1_0".ref = "flake-pinning";
  inputs."akane-v0_1_0".dir = "nimpkgs/a/akane/v0_1_0";
  inputs."akane-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."akane-v0_1_1".type = "github";
  inputs."akane-v0_1_1".owner = "riinr";
  inputs."akane-v0_1_1".repo = "flake-nimble";
  inputs."akane-v0_1_1".ref = "flake-pinning";
  inputs."akane-v0_1_1".dir = "nimpkgs/a/akane/v0_1_1";
  inputs."akane-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."akane-v0_1_1b".type = "github";
  inputs."akane-v0_1_1b".owner = "riinr";
  inputs."akane-v0_1_1b".repo = "flake-nimble";
  inputs."akane-v0_1_1b".ref = "flake-pinning";
  inputs."akane-v0_1_1b".dir = "nimpkgs/a/akane/v0_1_1b";
  inputs."akane-v0_1_1b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_1b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."akane-v0_1_2".type = "github";
  inputs."akane-v0_1_2".owner = "riinr";
  inputs."akane-v0_1_2".repo = "flake-nimble";
  inputs."akane-v0_1_2".ref = "flake-pinning";
  inputs."akane-v0_1_2".dir = "nimpkgs/a/akane/v0_1_2";
  inputs."akane-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."akane-v0_1_3".type = "github";
  inputs."akane-v0_1_3".owner = "riinr";
  inputs."akane-v0_1_3".repo = "flake-nimble";
  inputs."akane-v0_1_3".ref = "flake-pinning";
  inputs."akane-v0_1_3".dir = "nimpkgs/a/akane/v0_1_3";
  inputs."akane-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."akane-v0_1_5".type = "github";
  inputs."akane-v0_1_5".owner = "riinr";
  inputs."akane-v0_1_5".repo = "flake-nimble";
  inputs."akane-v0_1_5".ref = "flake-pinning";
  inputs."akane-v0_1_5".dir = "nimpkgs/a/akane/v0_1_5";
  inputs."akane-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."akane-v0_1_6".type = "github";
  inputs."akane-v0_1_6".owner = "riinr";
  inputs."akane-v0_1_6".repo = "flake-nimble";
  inputs."akane-v0_1_6".ref = "flake-pinning";
  inputs."akane-v0_1_6".dir = "nimpkgs/a/akane/v0_1_6";
  inputs."akane-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."akane-v0_1_7".type = "github";
  inputs."akane-v0_1_7".owner = "riinr";
  inputs."akane-v0_1_7".repo = "flake-nimble";
  inputs."akane-v0_1_7".ref = "flake-pinning";
  inputs."akane-v0_1_7".dir = "nimpkgs/a/akane/v0_1_7";
  inputs."akane-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}