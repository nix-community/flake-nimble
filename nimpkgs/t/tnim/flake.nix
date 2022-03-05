{
  description = ''tnim is a Nim REPL - an interactive sandbox for testing Nim code'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tnim-master".type = "github";
  inputs."tnim-master".owner = "riinr";
  inputs."tnim-master".repo = "flake-nimble";
  inputs."tnim-master".ref = "flake-pinning";
  inputs."tnim-master".dir = "nimpkgs/t/tnim/master";
  inputs."tnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tnim-2_0_4".type = "github";
  inputs."tnim-2_0_4".owner = "riinr";
  inputs."tnim-2_0_4".repo = "flake-nimble";
  inputs."tnim-2_0_4".ref = "flake-pinning";
  inputs."tnim-2_0_4".dir = "nimpkgs/t/tnim/2_0_4";
  inputs."tnim-2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tnim-2_0_5".type = "github";
  inputs."tnim-2_0_5".owner = "riinr";
  inputs."tnim-2_0_5".repo = "flake-nimble";
  inputs."tnim-2_0_5".ref = "flake-pinning";
  inputs."tnim-2_0_5".dir = "nimpkgs/t/tnim/2_0_5";
  inputs."tnim-2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tnim-2_0_6".type = "github";
  inputs."tnim-2_0_6".owner = "riinr";
  inputs."tnim-2_0_6".repo = "flake-nimble";
  inputs."tnim-2_0_6".ref = "flake-pinning";
  inputs."tnim-2_0_6".dir = "nimpkgs/t/tnim/2_0_6";
  inputs."tnim-2_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-2_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tnim-v2_0_6".type = "github";
  inputs."tnim-v2_0_6".owner = "riinr";
  inputs."tnim-v2_0_6".repo = "flake-nimble";
  inputs."tnim-v2_0_6".ref = "flake-pinning";
  inputs."tnim-v2_0_6".dir = "nimpkgs/t/tnim/v2_0_6";
  inputs."tnim-v2_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-v2_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}