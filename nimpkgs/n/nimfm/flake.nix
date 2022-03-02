{
  description = ''A library for factorization machines in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimfm-master".type = "github";
  inputs."nimfm-master".owner = "riinr";
  inputs."nimfm-master".repo = "flake-nimble";
  inputs."nimfm-master".ref = "flake-pinning";
  inputs."nimfm-master".dir = "nimpkgs/n/nimfm/master";
  inputs."nimfm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfm-v0_1_0".type = "github";
  inputs."nimfm-v0_1_0".owner = "riinr";
  inputs."nimfm-v0_1_0".repo = "flake-nimble";
  inputs."nimfm-v0_1_0".ref = "flake-pinning";
  inputs."nimfm-v0_1_0".dir = "nimpkgs/n/nimfm/v0_1_0";
  inputs."nimfm-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfm-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfm-v0_2_0".type = "github";
  inputs."nimfm-v0_2_0".owner = "riinr";
  inputs."nimfm-v0_2_0".repo = "flake-nimble";
  inputs."nimfm-v0_2_0".ref = "flake-pinning";
  inputs."nimfm-v0_2_0".dir = "nimpkgs/n/nimfm/v0_2_0";
  inputs."nimfm-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfm-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfm-v0_3_0".type = "github";
  inputs."nimfm-v0_3_0".owner = "riinr";
  inputs."nimfm-v0_3_0".repo = "flake-nimble";
  inputs."nimfm-v0_3_0".ref = "flake-pinning";
  inputs."nimfm-v0_3_0".dir = "nimpkgs/n/nimfm/v0_3_0";
  inputs."nimfm-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfm-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}