{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimpng-master".type = "github";
  inputs."nimpng-master".owner = "riinr";
  inputs."nimpng-master".repo = "flake-nimble";
  inputs."nimpng-master".ref = "flake-pinning";
  inputs."nimpng-master".dir = "nimpkgs/n/nimpng/master";
  inputs."nimpng-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpng-0_2_7".type = "github";
  inputs."nimpng-0_2_7".owner = "riinr";
  inputs."nimpng-0_2_7".repo = "flake-nimble";
  inputs."nimpng-0_2_7".ref = "flake-pinning";
  inputs."nimpng-0_2_7".dir = "nimpkgs/n/nimpng/0_2_7";
  inputs."nimpng-0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpng-0_3_0".type = "github";
  inputs."nimpng-0_3_0".owner = "riinr";
  inputs."nimpng-0_3_0".repo = "flake-nimble";
  inputs."nimpng-0_3_0".ref = "flake-pinning";
  inputs."nimpng-0_3_0".dir = "nimpkgs/n/nimpng/0_3_0";
  inputs."nimpng-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpng-v0_2_5".type = "github";
  inputs."nimpng-v0_2_5".owner = "riinr";
  inputs."nimpng-v0_2_5".repo = "flake-nimble";
  inputs."nimpng-v0_2_5".ref = "flake-pinning";
  inputs."nimpng-v0_2_5".dir = "nimpkgs/n/nimpng/v0_2_5";
  inputs."nimpng-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpng-v0_2_6".type = "github";
  inputs."nimpng-v0_2_6".owner = "riinr";
  inputs."nimpng-v0_2_6".repo = "flake-nimble";
  inputs."nimpng-v0_2_6".ref = "flake-pinning";
  inputs."nimpng-v0_2_6".dir = "nimpkgs/n/nimpng/v0_2_6";
  inputs."nimpng-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpng-v0_3_1".type = "github";
  inputs."nimpng-v0_3_1".owner = "riinr";
  inputs."nimpng-v0_3_1".repo = "flake-nimble";
  inputs."nimpng-v0_3_1".ref = "flake-pinning";
  inputs."nimpng-v0_3_1".dir = "nimpkgs/n/nimpng/v0_3_1";
  inputs."nimpng-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}