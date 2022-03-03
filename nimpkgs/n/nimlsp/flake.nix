{
  description = ''Language Server Protocol implementation for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimlsp-master".type = "github";
  inputs."nimlsp-master".owner = "riinr";
  inputs."nimlsp-master".repo = "flake-nimble";
  inputs."nimlsp-master".ref = "flake-pinning";
  inputs."nimlsp-master".dir = "nimpkgs/n/nimlsp/master";
  inputs."nimlsp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlsp-v0_2_0".type = "github";
  inputs."nimlsp-v0_2_0".owner = "riinr";
  inputs."nimlsp-v0_2_0".repo = "flake-nimble";
  inputs."nimlsp-v0_2_0".ref = "flake-pinning";
  inputs."nimlsp-v0_2_0".dir = "nimpkgs/n/nimlsp/v0_2_0";
  inputs."nimlsp-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlsp-v0_2_1".type = "github";
  inputs."nimlsp-v0_2_1".owner = "riinr";
  inputs."nimlsp-v0_2_1".repo = "flake-nimble";
  inputs."nimlsp-v0_2_1".ref = "flake-pinning";
  inputs."nimlsp-v0_2_1".dir = "nimpkgs/n/nimlsp/v0_2_1";
  inputs."nimlsp-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlsp-v0_2_2".type = "github";
  inputs."nimlsp-v0_2_2".owner = "riinr";
  inputs."nimlsp-v0_2_2".repo = "flake-nimble";
  inputs."nimlsp-v0_2_2".ref = "flake-pinning";
  inputs."nimlsp-v0_2_2".dir = "nimpkgs/n/nimlsp/v0_2_2";
  inputs."nimlsp-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlsp-v0_2_3".type = "github";
  inputs."nimlsp-v0_2_3".owner = "riinr";
  inputs."nimlsp-v0_2_3".repo = "flake-nimble";
  inputs."nimlsp-v0_2_3".ref = "flake-pinning";
  inputs."nimlsp-v0_2_3".dir = "nimpkgs/n/nimlsp/v0_2_3";
  inputs."nimlsp-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlsp-v0_2_4".type = "github";
  inputs."nimlsp-v0_2_4".owner = "riinr";
  inputs."nimlsp-v0_2_4".repo = "flake-nimble";
  inputs."nimlsp-v0_2_4".ref = "flake-pinning";
  inputs."nimlsp-v0_2_4".dir = "nimpkgs/n/nimlsp/v0_2_4";
  inputs."nimlsp-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlsp-v0_2_6".type = "github";
  inputs."nimlsp-v0_2_6".owner = "riinr";
  inputs."nimlsp-v0_2_6".repo = "flake-nimble";
  inputs."nimlsp-v0_2_6".ref = "flake-pinning";
  inputs."nimlsp-v0_2_6".dir = "nimpkgs/n/nimlsp/v0_2_6";
  inputs."nimlsp-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlsp-v0_3_2".type = "github";
  inputs."nimlsp-v0_3_2".owner = "riinr";
  inputs."nimlsp-v0_3_2".repo = "flake-nimble";
  inputs."nimlsp-v0_3_2".ref = "flake-pinning";
  inputs."nimlsp-v0_3_2".dir = "nimpkgs/n/nimlsp/v0_3_2";
  inputs."nimlsp-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlsp-v0_4_0".type = "github";
  inputs."nimlsp-v0_4_0".owner = "riinr";
  inputs."nimlsp-v0_4_0".repo = "flake-nimble";
  inputs."nimlsp-v0_4_0".ref = "flake-pinning";
  inputs."nimlsp-v0_4_0".dir = "nimpkgs/n/nimlsp/v0_4_0";
  inputs."nimlsp-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}