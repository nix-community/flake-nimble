{
  description = ''implements the cucumber BDD framework in the nim language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cucumber-master".type = "github";
  inputs."cucumber-master".owner = "riinr";
  inputs."cucumber-master".repo = "flake-nimble";
  inputs."cucumber-master".ref = "flake-pinning";
  inputs."cucumber-master".dir = "nimpkgs/c/cucumber/master";
  inputs."cucumber-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cucumber-v0_0_10".type = "github";
  inputs."cucumber-v0_0_10".owner = "riinr";
  inputs."cucumber-v0_0_10".repo = "flake-nimble";
  inputs."cucumber-v0_0_10".ref = "flake-pinning";
  inputs."cucumber-v0_0_10".dir = "nimpkgs/c/cucumber/v0_0_10";
  inputs."cucumber-v0_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cucumber-v0_0_11".type = "github";
  inputs."cucumber-v0_0_11".owner = "riinr";
  inputs."cucumber-v0_0_11".repo = "flake-nimble";
  inputs."cucumber-v0_0_11".ref = "flake-pinning";
  inputs."cucumber-v0_0_11".dir = "nimpkgs/c/cucumber/v0_0_11";
  inputs."cucumber-v0_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cucumber-v0_0_2".type = "github";
  inputs."cucumber-v0_0_2".owner = "riinr";
  inputs."cucumber-v0_0_2".repo = "flake-nimble";
  inputs."cucumber-v0_0_2".ref = "flake-pinning";
  inputs."cucumber-v0_0_2".dir = "nimpkgs/c/cucumber/v0_0_2";
  inputs."cucumber-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cucumber-v0_0_3".type = "github";
  inputs."cucumber-v0_0_3".owner = "riinr";
  inputs."cucumber-v0_0_3".repo = "flake-nimble";
  inputs."cucumber-v0_0_3".ref = "flake-pinning";
  inputs."cucumber-v0_0_3".dir = "nimpkgs/c/cucumber/v0_0_3";
  inputs."cucumber-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cucumber-v0_0_4".type = "github";
  inputs."cucumber-v0_0_4".owner = "riinr";
  inputs."cucumber-v0_0_4".repo = "flake-nimble";
  inputs."cucumber-v0_0_4".ref = "flake-pinning";
  inputs."cucumber-v0_0_4".dir = "nimpkgs/c/cucumber/v0_0_4";
  inputs."cucumber-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cucumber-v0_0_6".type = "github";
  inputs."cucumber-v0_0_6".owner = "riinr";
  inputs."cucumber-v0_0_6".repo = "flake-nimble";
  inputs."cucumber-v0_0_6".ref = "flake-pinning";
  inputs."cucumber-v0_0_6".dir = "nimpkgs/c/cucumber/v0_0_6";
  inputs."cucumber-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cucumber-v0_0_7".type = "github";
  inputs."cucumber-v0_0_7".owner = "riinr";
  inputs."cucumber-v0_0_7".repo = "flake-nimble";
  inputs."cucumber-v0_0_7".ref = "flake-pinning";
  inputs."cucumber-v0_0_7".dir = "nimpkgs/c/cucumber/v0_0_7";
  inputs."cucumber-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cucumber-v0_0_8".type = "github";
  inputs."cucumber-v0_0_8".owner = "riinr";
  inputs."cucumber-v0_0_8".repo = "flake-nimble";
  inputs."cucumber-v0_0_8".ref = "flake-pinning";
  inputs."cucumber-v0_0_8".dir = "nimpkgs/c/cucumber/v0_0_8";
  inputs."cucumber-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cucumber-v0_0_9".type = "github";
  inputs."cucumber-v0_0_9".owner = "riinr";
  inputs."cucumber-v0_0_9".repo = "flake-nimble";
  inputs."cucumber-v0_0_9".ref = "flake-pinning";
  inputs."cucumber-v0_0_9".dir = "nimpkgs/c/cucumber/v0_0_9";
  inputs."cucumber-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}