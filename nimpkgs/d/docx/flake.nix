{
  description = ''A simple docx reader.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."docx-master".type = "github";
  inputs."docx-master".owner = "riinr";
  inputs."docx-master".repo = "flake-nimble";
  inputs."docx-master".ref = "flake-pinning";
  inputs."docx-master".dir = "nimpkgs/d/docx/master";
  inputs."docx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."docx-v0_0_2".type = "github";
  inputs."docx-v0_0_2".owner = "riinr";
  inputs."docx-v0_0_2".repo = "flake-nimble";
  inputs."docx-v0_0_2".ref = "flake-pinning";
  inputs."docx-v0_0_2".dir = "nimpkgs/d/docx/v0_0_2";
  inputs."docx-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."docx-v0_1_0".type = "github";
  inputs."docx-v0_1_0".owner = "riinr";
  inputs."docx-v0_1_0".repo = "flake-nimble";
  inputs."docx-v0_1_0".ref = "flake-pinning";
  inputs."docx-v0_1_0".dir = "nimpkgs/d/docx/v0_1_0";
  inputs."docx-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."docx-v0_1_2".type = "github";
  inputs."docx-v0_1_2".owner = "riinr";
  inputs."docx-v0_1_2".repo = "flake-nimble";
  inputs."docx-v0_1_2".ref = "flake-pinning";
  inputs."docx-v0_1_2".dir = "nimpkgs/d/docx/v0_1_2";
  inputs."docx-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."docx-v0_1_4".type = "github";
  inputs."docx-v0_1_4".owner = "riinr";
  inputs."docx-v0_1_4".repo = "flake-nimble";
  inputs."docx-v0_1_4".ref = "flake-pinning";
  inputs."docx-v0_1_4".dir = "nimpkgs/d/docx/v0_1_4";
  inputs."docx-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."docx-v0_1_6".type = "github";
  inputs."docx-v0_1_6".owner = "riinr";
  inputs."docx-v0_1_6".repo = "flake-nimble";
  inputs."docx-v0_1_6".ref = "flake-pinning";
  inputs."docx-v0_1_6".dir = "nimpkgs/d/docx/v0_1_6";
  inputs."docx-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."docx-v0_1_8".type = "github";
  inputs."docx-v0_1_8".owner = "riinr";
  inputs."docx-v0_1_8".repo = "flake-nimble";
  inputs."docx-v0_1_8".ref = "flake-pinning";
  inputs."docx-v0_1_8".dir = "nimpkgs/d/docx/v0_1_8";
  inputs."docx-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}