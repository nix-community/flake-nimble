{
  description = ''This package tries to provide a lot of the most useful data structures and alogrithms need in the different subfield of bio informatics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bionim-main".type = "github";
  inputs."bionim-main".owner = "riinr";
  inputs."bionim-main".repo = "flake-nimble";
  inputs."bionim-main".ref = "flake-pinning";
  inputs."bionim-main".dir = "nimpkgs/b/bionim/main";
  inputs."bionim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bionim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bionim-0_0_2".type = "github";
  inputs."bionim-0_0_2".owner = "riinr";
  inputs."bionim-0_0_2".repo = "flake-nimble";
  inputs."bionim-0_0_2".ref = "flake-pinning";
  inputs."bionim-0_0_2".dir = "nimpkgs/b/bionim/0_0_2";
  inputs."bionim-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bionim-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bionim-0_0_3".type = "github";
  inputs."bionim-0_0_3".owner = "riinr";
  inputs."bionim-0_0_3".repo = "flake-nimble";
  inputs."bionim-0_0_3".ref = "flake-pinning";
  inputs."bionim-0_0_3".dir = "nimpkgs/b/bionim/0_0_3";
  inputs."bionim-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bionim-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bionim-0_0_4".type = "github";
  inputs."bionim-0_0_4".owner = "riinr";
  inputs."bionim-0_0_4".repo = "flake-nimble";
  inputs."bionim-0_0_4".ref = "flake-pinning";
  inputs."bionim-0_0_4".dir = "nimpkgs/b/bionim/0_0_4";
  inputs."bionim-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bionim-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bionim-v0_0_1".type = "github";
  inputs."bionim-v0_0_1".owner = "riinr";
  inputs."bionim-v0_0_1".repo = "flake-nimble";
  inputs."bionim-v0_0_1".ref = "flake-pinning";
  inputs."bionim-v0_0_1".dir = "nimpkgs/b/bionim/v0_0_1";
  inputs."bionim-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bionim-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}