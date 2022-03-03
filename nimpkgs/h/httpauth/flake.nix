{
  description = ''HTTP Authentication and Authorization'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."httpauth-master".type = "github";
  inputs."httpauth-master".owner = "riinr";
  inputs."httpauth-master".repo = "flake-nimble";
  inputs."httpauth-master".ref = "flake-pinning";
  inputs."httpauth-master".dir = "nimpkgs/h/httpauth/master";
  inputs."httpauth-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpauth-0_1_0".type = "github";
  inputs."httpauth-0_1_0".owner = "riinr";
  inputs."httpauth-0_1_0".repo = "flake-nimble";
  inputs."httpauth-0_1_0".ref = "flake-pinning";
  inputs."httpauth-0_1_0".dir = "nimpkgs/h/httpauth/0_1_0";
  inputs."httpauth-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpauth-0_1_2".type = "github";
  inputs."httpauth-0_1_2".owner = "riinr";
  inputs."httpauth-0_1_2".repo = "flake-nimble";
  inputs."httpauth-0_1_2".ref = "flake-pinning";
  inputs."httpauth-0_1_2".dir = "nimpkgs/h/httpauth/0_1_2";
  inputs."httpauth-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpauth-0_1_3".type = "github";
  inputs."httpauth-0_1_3".owner = "riinr";
  inputs."httpauth-0_1_3".repo = "flake-nimble";
  inputs."httpauth-0_1_3".ref = "flake-pinning";
  inputs."httpauth-0_1_3".dir = "nimpkgs/h/httpauth/0_1_3";
  inputs."httpauth-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpauth-0_2_0".type = "github";
  inputs."httpauth-0_2_0".owner = "riinr";
  inputs."httpauth-0_2_0".repo = "flake-nimble";
  inputs."httpauth-0_2_0".ref = "flake-pinning";
  inputs."httpauth-0_2_0".dir = "nimpkgs/h/httpauth/0_2_0";
  inputs."httpauth-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpauth-0_3_0".type = "github";
  inputs."httpauth-0_3_0".owner = "riinr";
  inputs."httpauth-0_3_0".repo = "flake-nimble";
  inputs."httpauth-0_3_0".ref = "flake-pinning";
  inputs."httpauth-0_3_0".dir = "nimpkgs/h/httpauth/0_3_0";
  inputs."httpauth-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}