{
  description = ''libxslxwriter wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimlibxlsxwriter-master".type = "github";
  inputs."nimlibxlsxwriter-master".owner = "riinr";
  inputs."nimlibxlsxwriter-master".repo = "flake-nimble";
  inputs."nimlibxlsxwriter-master".ref = "flake-pinning";
  inputs."nimlibxlsxwriter-master".dir = "nimpkgs/n/nimlibxlsxwriter/master";
  inputs."nimlibxlsxwriter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlibxlsxwriter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlibxlsxwriter-v0_1_1".type = "github";
  inputs."nimlibxlsxwriter-v0_1_1".owner = "riinr";
  inputs."nimlibxlsxwriter-v0_1_1".repo = "flake-nimble";
  inputs."nimlibxlsxwriter-v0_1_1".ref = "flake-pinning";
  inputs."nimlibxlsxwriter-v0_1_1".dir = "nimpkgs/n/nimlibxlsxwriter/v0_1_1";
  inputs."nimlibxlsxwriter-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlibxlsxwriter-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlibxlsxwriter-v0_1_2".type = "github";
  inputs."nimlibxlsxwriter-v0_1_2".owner = "riinr";
  inputs."nimlibxlsxwriter-v0_1_2".repo = "flake-nimble";
  inputs."nimlibxlsxwriter-v0_1_2".ref = "flake-pinning";
  inputs."nimlibxlsxwriter-v0_1_2".dir = "nimpkgs/n/nimlibxlsxwriter/v0_1_2";
  inputs."nimlibxlsxwriter-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlibxlsxwriter-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlibxlsxwriter-v0_1_3".type = "github";
  inputs."nimlibxlsxwriter-v0_1_3".owner = "riinr";
  inputs."nimlibxlsxwriter-v0_1_3".repo = "flake-nimble";
  inputs."nimlibxlsxwriter-v0_1_3".ref = "flake-pinning";
  inputs."nimlibxlsxwriter-v0_1_3".dir = "nimpkgs/n/nimlibxlsxwriter/v0_1_3";
  inputs."nimlibxlsxwriter-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlibxlsxwriter-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlibxlsxwriter-v0_3_0".type = "github";
  inputs."nimlibxlsxwriter-v0_3_0".owner = "riinr";
  inputs."nimlibxlsxwriter-v0_3_0".repo = "flake-nimble";
  inputs."nimlibxlsxwriter-v0_3_0".ref = "flake-pinning";
  inputs."nimlibxlsxwriter-v0_3_0".dir = "nimpkgs/n/nimlibxlsxwriter/v0_3_0";
  inputs."nimlibxlsxwriter-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlibxlsxwriter-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}