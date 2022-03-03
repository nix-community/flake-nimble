{
  description = ''webrod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."webrod-main".type = "github";
  inputs."webrod-main".owner = "riinr";
  inputs."webrod-main".repo = "flake-nimble";
  inputs."webrod-main".ref = "flake-pinning";
  inputs."webrod-main".dir = "nimpkgs/w/webrod/main";
  inputs."webrod-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webrod-0_1_0".type = "github";
  inputs."webrod-0_1_0".owner = "riinr";
  inputs."webrod-0_1_0".repo = "flake-nimble";
  inputs."webrod-0_1_0".ref = "flake-pinning";
  inputs."webrod-0_1_0".dir = "nimpkgs/w/webrod/0_1_0";
  inputs."webrod-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webrod-0_2_0".type = "github";
  inputs."webrod-0_2_0".owner = "riinr";
  inputs."webrod-0_2_0".repo = "flake-nimble";
  inputs."webrod-0_2_0".ref = "flake-pinning";
  inputs."webrod-0_2_0".dir = "nimpkgs/w/webrod/0_2_0";
  inputs."webrod-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webrod-0_3_0".type = "github";
  inputs."webrod-0_3_0".owner = "riinr";
  inputs."webrod-0_3_0".repo = "flake-nimble";
  inputs."webrod-0_3_0".ref = "flake-pinning";
  inputs."webrod-0_3_0".dir = "nimpkgs/w/webrod/0_3_0";
  inputs."webrod-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webrod-0_4_0".type = "github";
  inputs."webrod-0_4_0".owner = "riinr";
  inputs."webrod-0_4_0".repo = "flake-nimble";
  inputs."webrod-0_4_0".ref = "flake-pinning";
  inputs."webrod-0_4_0".dir = "nimpkgs/w/webrod/0_4_0";
  inputs."webrod-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webrod-0_5_0".type = "github";
  inputs."webrod-0_5_0".owner = "riinr";
  inputs."webrod-0_5_0".repo = "flake-nimble";
  inputs."webrod-0_5_0".ref = "flake-pinning";
  inputs."webrod-0_5_0".dir = "nimpkgs/w/webrod/0_5_0";
  inputs."webrod-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}