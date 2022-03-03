{
  description = ''Wrapper-less C/C++ interop for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimline-master".type = "github";
  inputs."nimline-master".owner = "riinr";
  inputs."nimline-master".repo = "flake-nimble";
  inputs."nimline-master".ref = "flake-pinning";
  inputs."nimline-master".dir = "nimpkgs/n/nimline/master";
  inputs."nimline-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimline-0_1_1".type = "github";
  inputs."nimline-0_1_1".owner = "riinr";
  inputs."nimline-0_1_1".repo = "flake-nimble";
  inputs."nimline-0_1_1".ref = "flake-pinning";
  inputs."nimline-0_1_1".dir = "nimpkgs/n/nimline/0_1_1";
  inputs."nimline-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimline-0_1_3".type = "github";
  inputs."nimline-0_1_3".owner = "riinr";
  inputs."nimline-0_1_3".repo = "flake-nimble";
  inputs."nimline-0_1_3".ref = "flake-pinning";
  inputs."nimline-0_1_3".dir = "nimpkgs/n/nimline/0_1_3";
  inputs."nimline-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimline-v0_1_0".type = "github";
  inputs."nimline-v0_1_0".owner = "riinr";
  inputs."nimline-v0_1_0".repo = "flake-nimble";
  inputs."nimline-v0_1_0".ref = "flake-pinning";
  inputs."nimline-v0_1_0".dir = "nimpkgs/n/nimline/v0_1_0";
  inputs."nimline-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimline-v0_1_1".type = "github";
  inputs."nimline-v0_1_1".owner = "riinr";
  inputs."nimline-v0_1_1".repo = "flake-nimble";
  inputs."nimline-v0_1_1".ref = "flake-pinning";
  inputs."nimline-v0_1_1".dir = "nimpkgs/n/nimline/v0_1_1";
  inputs."nimline-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimline-v0_1_2".type = "github";
  inputs."nimline-v0_1_2".owner = "riinr";
  inputs."nimline-v0_1_2".repo = "flake-nimble";
  inputs."nimline-v0_1_2".ref = "flake-pinning";
  inputs."nimline-v0_1_2".dir = "nimpkgs/n/nimline/v0_1_2";
  inputs."nimline-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimline-v0_1_3".type = "github";
  inputs."nimline-v0_1_3".owner = "riinr";
  inputs."nimline-v0_1_3".repo = "flake-nimble";
  inputs."nimline-v0_1_3".ref = "flake-pinning";
  inputs."nimline-v0_1_3".dir = "nimpkgs/n/nimline/v0_1_3";
  inputs."nimline-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimline-v0_1_4".type = "github";
  inputs."nimline-v0_1_4".owner = "riinr";
  inputs."nimline-v0_1_4".repo = "flake-nimble";
  inputs."nimline-v0_1_4".ref = "flake-pinning";
  inputs."nimline-v0_1_4".dir = "nimpkgs/n/nimline/v0_1_4";
  inputs."nimline-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimline-v0_1_5".type = "github";
  inputs."nimline-v0_1_5".owner = "riinr";
  inputs."nimline-v0_1_5".repo = "flake-nimble";
  inputs."nimline-v0_1_5".ref = "flake-pinning";
  inputs."nimline-v0_1_5".dir = "nimpkgs/n/nimline/v0_1_5";
  inputs."nimline-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimline-v0_1_6".type = "github";
  inputs."nimline-v0_1_6".owner = "riinr";
  inputs."nimline-v0_1_6".repo = "flake-nimble";
  inputs."nimline-v0_1_6".ref = "flake-pinning";
  inputs."nimline-v0_1_6".dir = "nimpkgs/n/nimline/v0_1_6";
  inputs."nimline-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimline-v0_1_7".type = "github";
  inputs."nimline-v0_1_7".owner = "riinr";
  inputs."nimline-v0_1_7".repo = "flake-nimble";
  inputs."nimline-v0_1_7".ref = "flake-pinning";
  inputs."nimline-v0_1_7".dir = "nimpkgs/n/nimline/v0_1_7";
  inputs."nimline-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}