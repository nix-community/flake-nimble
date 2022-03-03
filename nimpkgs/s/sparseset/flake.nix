{
  description = ''Sparsets for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sparseset-main".type = "github";
  inputs."sparseset-main".owner = "riinr";
  inputs."sparseset-main".repo = "flake-nimble";
  inputs."sparseset-main".ref = "flake-pinning";
  inputs."sparseset-main".dir = "nimpkgs/s/sparseset/main";
  inputs."sparseset-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sparseset-v0_1_0".type = "github";
  inputs."sparseset-v0_1_0".owner = "riinr";
  inputs."sparseset-v0_1_0".repo = "flake-nimble";
  inputs."sparseset-v0_1_0".ref = "flake-pinning";
  inputs."sparseset-v0_1_0".dir = "nimpkgs/s/sparseset/v0_1_0";
  inputs."sparseset-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sparseset-v0_3_0".type = "github";
  inputs."sparseset-v0_3_0".owner = "riinr";
  inputs."sparseset-v0_3_0".repo = "flake-nimble";
  inputs."sparseset-v0_3_0".ref = "flake-pinning";
  inputs."sparseset-v0_3_0".dir = "nimpkgs/s/sparseset/v0_3_0";
  inputs."sparseset-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sparseset-v0_3_1".type = "github";
  inputs."sparseset-v0_3_1".owner = "riinr";
  inputs."sparseset-v0_3_1".repo = "flake-nimble";
  inputs."sparseset-v0_3_1".ref = "flake-pinning";
  inputs."sparseset-v0_3_1".dir = "nimpkgs/s/sparseset/v0_3_1";
  inputs."sparseset-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sparseset-v0_3_2".type = "github";
  inputs."sparseset-v0_3_2".owner = "riinr";
  inputs."sparseset-v0_3_2".repo = "flake-nimble";
  inputs."sparseset-v0_3_2".ref = "flake-pinning";
  inputs."sparseset-v0_3_2".dir = "nimpkgs/s/sparseset/v0_3_2";
  inputs."sparseset-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sparseset-v0_4_0".type = "github";
  inputs."sparseset-v0_4_0".owner = "riinr";
  inputs."sparseset-v0_4_0".repo = "flake-nimble";
  inputs."sparseset-v0_4_0".ref = "flake-pinning";
  inputs."sparseset-v0_4_0".dir = "nimpkgs/s/sparseset/v0_4_0";
  inputs."sparseset-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sparseset-v0_5_0".type = "github";
  inputs."sparseset-v0_5_0".owner = "riinr";
  inputs."sparseset-v0_5_0".repo = "flake-nimble";
  inputs."sparseset-v0_5_0".ref = "flake-pinning";
  inputs."sparseset-v0_5_0".dir = "nimpkgs/s/sparseset/v0_5_0";
  inputs."sparseset-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sparseset-v0_6_0".type = "github";
  inputs."sparseset-v0_6_0".owner = "riinr";
  inputs."sparseset-v0_6_0".repo = "flake-nimble";
  inputs."sparseset-v0_6_0".ref = "flake-pinning";
  inputs."sparseset-v0_6_0".dir = "nimpkgs/s/sparseset/v0_6_0";
  inputs."sparseset-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}