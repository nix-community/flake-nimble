{
  description = ''A nim wrapper for ArrayFire'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."arrayfirenim-master".type = "github";
  inputs."arrayfirenim-master".owner = "riinr";
  inputs."arrayfirenim-master".repo = "flake-nimble";
  inputs."arrayfirenim-master".ref = "flake-pinning";
  inputs."arrayfirenim-master".dir = "nimpkgs/a/arrayfirenim/master";
  inputs."arrayfirenim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."arrayfirenim-v0_1_0".type = "github";
  inputs."arrayfirenim-v0_1_0".owner = "riinr";
  inputs."arrayfirenim-v0_1_0".repo = "flake-nimble";
  inputs."arrayfirenim-v0_1_0".ref = "flake-pinning";
  inputs."arrayfirenim-v0_1_0".dir = "nimpkgs/a/arrayfirenim/v0_1_0";
  inputs."arrayfirenim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."arrayfirenim-v0_2_0".type = "github";
  inputs."arrayfirenim-v0_2_0".owner = "riinr";
  inputs."arrayfirenim-v0_2_0".repo = "flake-nimble";
  inputs."arrayfirenim-v0_2_0".ref = "flake-pinning";
  inputs."arrayfirenim-v0_2_0".dir = "nimpkgs/a/arrayfirenim/v0_2_0";
  inputs."arrayfirenim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."arrayfirenim-v0_2_1".type = "github";
  inputs."arrayfirenim-v0_2_1".owner = "riinr";
  inputs."arrayfirenim-v0_2_1".repo = "flake-nimble";
  inputs."arrayfirenim-v0_2_1".ref = "flake-pinning";
  inputs."arrayfirenim-v0_2_1".dir = "nimpkgs/a/arrayfirenim/v0_2_1";
  inputs."arrayfirenim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."arrayfirenim-v0_2_2".type = "github";
  inputs."arrayfirenim-v0_2_2".owner = "riinr";
  inputs."arrayfirenim-v0_2_2".repo = "flake-nimble";
  inputs."arrayfirenim-v0_2_2".ref = "flake-pinning";
  inputs."arrayfirenim-v0_2_2".dir = "nimpkgs/a/arrayfirenim/v0_2_2";
  inputs."arrayfirenim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."arrayfirenim-v0_2_3".type = "github";
  inputs."arrayfirenim-v0_2_3".owner = "riinr";
  inputs."arrayfirenim-v0_2_3".repo = "flake-nimble";
  inputs."arrayfirenim-v0_2_3".ref = "flake-pinning";
  inputs."arrayfirenim-v0_2_3".dir = "nimpkgs/a/arrayfirenim/v0_2_3";
  inputs."arrayfirenim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}