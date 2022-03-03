{
  description = ''URL and URI parsing for C and JS backend.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."urlly-master".type = "github";
  inputs."urlly-master".owner = "riinr";
  inputs."urlly-master".repo = "flake-nimble";
  inputs."urlly-master".ref = "flake-pinning";
  inputs."urlly-master".dir = "nimpkgs/u/urlly/master";
  inputs."urlly-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."urlly-0_1_0".type = "github";
  inputs."urlly-0_1_0".owner = "riinr";
  inputs."urlly-0_1_0".repo = "flake-nimble";
  inputs."urlly-0_1_0".ref = "flake-pinning";
  inputs."urlly-0_1_0".dir = "nimpkgs/u/urlly/0_1_0";
  inputs."urlly-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."urlly-0_2_0".type = "github";
  inputs."urlly-0_2_0".owner = "riinr";
  inputs."urlly-0_2_0".repo = "flake-nimble";
  inputs."urlly-0_2_0".ref = "flake-pinning";
  inputs."urlly-0_2_0".dir = "nimpkgs/u/urlly/0_2_0";
  inputs."urlly-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."urlly-0_3_0".type = "github";
  inputs."urlly-0_3_0".owner = "riinr";
  inputs."urlly-0_3_0".repo = "flake-nimble";
  inputs."urlly-0_3_0".ref = "flake-pinning";
  inputs."urlly-0_3_0".dir = "nimpkgs/u/urlly/0_3_0";
  inputs."urlly-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."urlly-1_0_0".type = "github";
  inputs."urlly-1_0_0".owner = "riinr";
  inputs."urlly-1_0_0".repo = "flake-nimble";
  inputs."urlly-1_0_0".ref = "flake-pinning";
  inputs."urlly-1_0_0".dir = "nimpkgs/u/urlly/1_0_0";
  inputs."urlly-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}