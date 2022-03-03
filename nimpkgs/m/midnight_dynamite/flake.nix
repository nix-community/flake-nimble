{
  description = ''Wrapper for the markdown rendering hoedown library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."midnight_dynamite-master".type = "github";
  inputs."midnight_dynamite-master".owner = "riinr";
  inputs."midnight_dynamite-master".repo = "flake-nimble";
  inputs."midnight_dynamite-master".ref = "flake-pinning";
  inputs."midnight_dynamite-master".dir = "nimpkgs/m/midnight_dynamite/master";
  inputs."midnight_dynamite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."midnight_dynamite-v0_2_0".type = "github";
  inputs."midnight_dynamite-v0_2_0".owner = "riinr";
  inputs."midnight_dynamite-v0_2_0".repo = "flake-nimble";
  inputs."midnight_dynamite-v0_2_0".ref = "flake-pinning";
  inputs."midnight_dynamite-v0_2_0".dir = "nimpkgs/m/midnight_dynamite/v0_2_0";
  inputs."midnight_dynamite-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."midnight_dynamite-v0_2_2".type = "github";
  inputs."midnight_dynamite-v0_2_2".owner = "riinr";
  inputs."midnight_dynamite-v0_2_2".repo = "flake-nimble";
  inputs."midnight_dynamite-v0_2_2".ref = "flake-pinning";
  inputs."midnight_dynamite-v0_2_2".dir = "nimpkgs/m/midnight_dynamite/v0_2_2";
  inputs."midnight_dynamite-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."midnight_dynamite-v0_2_4".type = "github";
  inputs."midnight_dynamite-v0_2_4".owner = "riinr";
  inputs."midnight_dynamite-v0_2_4".repo = "flake-nimble";
  inputs."midnight_dynamite-v0_2_4".ref = "flake-pinning";
  inputs."midnight_dynamite-v0_2_4".dir = "nimpkgs/m/midnight_dynamite/v0_2_4";
  inputs."midnight_dynamite-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."midnight_dynamite-v1_0_0".type = "github";
  inputs."midnight_dynamite-v1_0_0".owner = "riinr";
  inputs."midnight_dynamite-v1_0_0".repo = "flake-nimble";
  inputs."midnight_dynamite-v1_0_0".ref = "flake-pinning";
  inputs."midnight_dynamite-v1_0_0".dir = "nimpkgs/m/midnight_dynamite/v1_0_0";
  inputs."midnight_dynamite-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}