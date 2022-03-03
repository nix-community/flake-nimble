{
  description = ''A simple cross language struct and enum file generator.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."wings-v0_0_1-alpha".type = "github";
  inputs."wings-v0_0_1-alpha".owner = "riinr";
  inputs."wings-v0_0_1-alpha".repo = "flake-nimble";
  inputs."wings-v0_0_1-alpha".ref = "flake-pinning";
  inputs."wings-v0_0_1-alpha".dir = "nimpkgs/w/wings/v0_0_1-alpha";
  inputs."wings-v0_0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wings-v0_0_2-alpha".type = "github";
  inputs."wings-v0_0_2-alpha".owner = "riinr";
  inputs."wings-v0_0_2-alpha".repo = "flake-nimble";
  inputs."wings-v0_0_2-alpha".ref = "flake-pinning";
  inputs."wings-v0_0_2-alpha".dir = "nimpkgs/w/wings/v0_0_2-alpha";
  inputs."wings-v0_0_2-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_2-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wings-v0_0_3-alpha".type = "github";
  inputs."wings-v0_0_3-alpha".owner = "riinr";
  inputs."wings-v0_0_3-alpha".repo = "flake-nimble";
  inputs."wings-v0_0_3-alpha".ref = "flake-pinning";
  inputs."wings-v0_0_3-alpha".dir = "nimpkgs/w/wings/v0_0_3-alpha";
  inputs."wings-v0_0_3-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_3-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wings-v0_0_4-alpha".type = "github";
  inputs."wings-v0_0_4-alpha".owner = "riinr";
  inputs."wings-v0_0_4-alpha".repo = "flake-nimble";
  inputs."wings-v0_0_4-alpha".ref = "flake-pinning";
  inputs."wings-v0_0_4-alpha".dir = "nimpkgs/w/wings/v0_0_4-alpha";
  inputs."wings-v0_0_4-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_4-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wings-v0_0_5-alpha".type = "github";
  inputs."wings-v0_0_5-alpha".owner = "riinr";
  inputs."wings-v0_0_5-alpha".repo = "flake-nimble";
  inputs."wings-v0_0_5-alpha".ref = "flake-pinning";
  inputs."wings-v0_0_5-alpha".dir = "nimpkgs/w/wings/v0_0_5-alpha";
  inputs."wings-v0_0_5-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_5-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wings-v0_0_6-alpha".type = "github";
  inputs."wings-v0_0_6-alpha".owner = "riinr";
  inputs."wings-v0_0_6-alpha".repo = "flake-nimble";
  inputs."wings-v0_0_6-alpha".ref = "flake-pinning";
  inputs."wings-v0_0_6-alpha".dir = "nimpkgs/w/wings/v0_0_6-alpha";
  inputs."wings-v0_0_6-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_6-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wings-v0_0_7-alpha".type = "github";
  inputs."wings-v0_0_7-alpha".owner = "riinr";
  inputs."wings-v0_0_7-alpha".repo = "flake-nimble";
  inputs."wings-v0_0_7-alpha".ref = "flake-pinning";
  inputs."wings-v0_0_7-alpha".dir = "nimpkgs/w/wings/v0_0_7-alpha";
  inputs."wings-v0_0_7-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_7-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}