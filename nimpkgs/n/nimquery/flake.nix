{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimquery-master".type = "github";
  inputs."nimquery-master".owner = "riinr";
  inputs."nimquery-master".repo = "flake-nimble";
  inputs."nimquery-master".ref = "flake-pinning";
  inputs."nimquery-master".dir = "nimpkgs/n/nimquery/master";
  inputs."nimquery-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimquery-v1_0_0".type = "github";
  inputs."nimquery-v1_0_0".owner = "riinr";
  inputs."nimquery-v1_0_0".repo = "flake-nimble";
  inputs."nimquery-v1_0_0".ref = "flake-pinning";
  inputs."nimquery-v1_0_0".dir = "nimpkgs/n/nimquery/v1_0_0";
  inputs."nimquery-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimquery-v1_0_1".type = "github";
  inputs."nimquery-v1_0_1".owner = "riinr";
  inputs."nimquery-v1_0_1".repo = "flake-nimble";
  inputs."nimquery-v1_0_1".ref = "flake-pinning";
  inputs."nimquery-v1_0_1".dir = "nimpkgs/n/nimquery/v1_0_1";
  inputs."nimquery-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimquery-v1_0_2".type = "github";
  inputs."nimquery-v1_0_2".owner = "riinr";
  inputs."nimquery-v1_0_2".repo = "flake-nimble";
  inputs."nimquery-v1_0_2".ref = "flake-pinning";
  inputs."nimquery-v1_0_2".dir = "nimpkgs/n/nimquery/v1_0_2";
  inputs."nimquery-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimquery-v1_1_0".type = "github";
  inputs."nimquery-v1_1_0".owner = "riinr";
  inputs."nimquery-v1_1_0".repo = "flake-nimble";
  inputs."nimquery-v1_1_0".ref = "flake-pinning";
  inputs."nimquery-v1_1_0".dir = "nimpkgs/n/nimquery/v1_1_0";
  inputs."nimquery-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimquery-v1_1_1".type = "github";
  inputs."nimquery-v1_1_1".owner = "riinr";
  inputs."nimquery-v1_1_1".repo = "flake-nimble";
  inputs."nimquery-v1_1_1".ref = "flake-pinning";
  inputs."nimquery-v1_1_1".dir = "nimpkgs/n/nimquery/v1_1_1";
  inputs."nimquery-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimquery-v1_1_2".type = "github";
  inputs."nimquery-v1_1_2".owner = "riinr";
  inputs."nimquery-v1_1_2".repo = "flake-nimble";
  inputs."nimquery-v1_1_2".ref = "flake-pinning";
  inputs."nimquery-v1_1_2".dir = "nimpkgs/n/nimquery/v1_1_2";
  inputs."nimquery-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimquery-v1_2_0".type = "github";
  inputs."nimquery-v1_2_0".owner = "riinr";
  inputs."nimquery-v1_2_0".repo = "flake-nimble";
  inputs."nimquery-v1_2_0".ref = "flake-pinning";
  inputs."nimquery-v1_2_0".dir = "nimpkgs/n/nimquery/v1_2_0";
  inputs."nimquery-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimquery-v1_2_1".type = "github";
  inputs."nimquery-v1_2_1".owner = "riinr";
  inputs."nimquery-v1_2_1".repo = "flake-nimble";
  inputs."nimquery-v1_2_1".ref = "flake-pinning";
  inputs."nimquery-v1_2_1".dir = "nimpkgs/n/nimquery/v1_2_1";
  inputs."nimquery-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimquery-v1_2_2".type = "github";
  inputs."nimquery-v1_2_2".owner = "riinr";
  inputs."nimquery-v1_2_2".repo = "flake-nimble";
  inputs."nimquery-v1_2_2".ref = "flake-pinning";
  inputs."nimquery-v1_2_2".dir = "nimpkgs/n/nimquery/v1_2_2";
  inputs."nimquery-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimquery-v1_2_3".type = "github";
  inputs."nimquery-v1_2_3".owner = "riinr";
  inputs."nimquery-v1_2_3".repo = "flake-nimble";
  inputs."nimquery-v1_2_3".ref = "flake-pinning";
  inputs."nimquery-v1_2_3".dir = "nimpkgs/n/nimquery/v1_2_3";
  inputs."nimquery-v1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}