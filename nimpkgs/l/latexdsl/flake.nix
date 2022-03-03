{
  description = ''A DSL to generate LaTeX from Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."latexdsl-master".type = "github";
  inputs."latexdsl-master".owner = "riinr";
  inputs."latexdsl-master".repo = "flake-nimble";
  inputs."latexdsl-master".ref = "flake-pinning";
  inputs."latexdsl-master".dir = "nimpkgs/l/latexdsl/master";
  inputs."latexdsl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."latexdsl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."latexdsl-v0_1_1".type = "github";
  inputs."latexdsl-v0_1_1".owner = "riinr";
  inputs."latexdsl-v0_1_1".repo = "flake-nimble";
  inputs."latexdsl-v0_1_1".ref = "flake-pinning";
  inputs."latexdsl-v0_1_1".dir = "nimpkgs/l/latexdsl/v0_1_1";
  inputs."latexdsl-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."latexdsl-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."latexdsl-v0_1_2".type = "github";
  inputs."latexdsl-v0_1_2".owner = "riinr";
  inputs."latexdsl-v0_1_2".repo = "flake-nimble";
  inputs."latexdsl-v0_1_2".ref = "flake-pinning";
  inputs."latexdsl-v0_1_2".dir = "nimpkgs/l/latexdsl/v0_1_2";
  inputs."latexdsl-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."latexdsl-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."latexdsl-v0_1_3".type = "github";
  inputs."latexdsl-v0_1_3".owner = "riinr";
  inputs."latexdsl-v0_1_3".repo = "flake-nimble";
  inputs."latexdsl-v0_1_3".ref = "flake-pinning";
  inputs."latexdsl-v0_1_3".dir = "nimpkgs/l/latexdsl/v0_1_3";
  inputs."latexdsl-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."latexdsl-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."latexdsl-v0_1_4".type = "github";
  inputs."latexdsl-v0_1_4".owner = "riinr";
  inputs."latexdsl-v0_1_4".repo = "flake-nimble";
  inputs."latexdsl-v0_1_4".ref = "flake-pinning";
  inputs."latexdsl-v0_1_4".dir = "nimpkgs/l/latexdsl/v0_1_4";
  inputs."latexdsl-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."latexdsl-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."latexdsl-v0_1_5".type = "github";
  inputs."latexdsl-v0_1_5".owner = "riinr";
  inputs."latexdsl-v0_1_5".repo = "flake-nimble";
  inputs."latexdsl-v0_1_5".ref = "flake-pinning";
  inputs."latexdsl-v0_1_5".dir = "nimpkgs/l/latexdsl/v0_1_5";
  inputs."latexdsl-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."latexdsl-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."latexdsl-v0_1_6".type = "github";
  inputs."latexdsl-v0_1_6".owner = "riinr";
  inputs."latexdsl-v0_1_6".repo = "flake-nimble";
  inputs."latexdsl-v0_1_6".ref = "flake-pinning";
  inputs."latexdsl-v0_1_6".dir = "nimpkgs/l/latexdsl/v0_1_6";
  inputs."latexdsl-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."latexdsl-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."latexdsl-v0_1_7".type = "github";
  inputs."latexdsl-v0_1_7".owner = "riinr";
  inputs."latexdsl-v0_1_7".repo = "flake-nimble";
  inputs."latexdsl-v0_1_7".ref = "flake-pinning";
  inputs."latexdsl-v0_1_7".dir = "nimpkgs/l/latexdsl/v0_1_7";
  inputs."latexdsl-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."latexdsl-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}