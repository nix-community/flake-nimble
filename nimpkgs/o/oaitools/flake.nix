{
  description = ''A high-level OAI-PMH library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."oaitools-master".type = "github";
  inputs."oaitools-master".owner = "riinr";
  inputs."oaitools-master".repo = "flake-nimble";
  inputs."oaitools-master".ref = "flake-pinning";
  inputs."oaitools-master".dir = "nimpkgs/o/oaitools/master";
  inputs."oaitools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oaitools-v0_1_0".type = "github";
  inputs."oaitools-v0_1_0".owner = "riinr";
  inputs."oaitools-v0_1_0".repo = "flake-nimble";
  inputs."oaitools-v0_1_0".ref = "flake-pinning";
  inputs."oaitools-v0_1_0".dir = "nimpkgs/o/oaitools/v0_1_0";
  inputs."oaitools-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oaitools-v0_2_0".type = "github";
  inputs."oaitools-v0_2_0".owner = "riinr";
  inputs."oaitools-v0_2_0".repo = "flake-nimble";
  inputs."oaitools-v0_2_0".ref = "flake-pinning";
  inputs."oaitools-v0_2_0".dir = "nimpkgs/o/oaitools/v0_2_0";
  inputs."oaitools-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oaitools-v0_2_1".type = "github";
  inputs."oaitools-v0_2_1".owner = "riinr";
  inputs."oaitools-v0_2_1".repo = "flake-nimble";
  inputs."oaitools-v0_2_1".ref = "flake-pinning";
  inputs."oaitools-v0_2_1".dir = "nimpkgs/o/oaitools/v0_2_1";
  inputs."oaitools-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oaitools-v0_2_2".type = "github";
  inputs."oaitools-v0_2_2".owner = "riinr";
  inputs."oaitools-v0_2_2".repo = "flake-nimble";
  inputs."oaitools-v0_2_2".ref = "flake-pinning";
  inputs."oaitools-v0_2_2".dir = "nimpkgs/o/oaitools/v0_2_2";
  inputs."oaitools-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oaitools-v0_2_3".type = "github";
  inputs."oaitools-v0_2_3".owner = "riinr";
  inputs."oaitools-v0_2_3".repo = "flake-nimble";
  inputs."oaitools-v0_2_3".ref = "flake-pinning";
  inputs."oaitools-v0_2_3".dir = "nimpkgs/o/oaitools/v0_2_3";
  inputs."oaitools-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oaitools-v0_2_4".type = "github";
  inputs."oaitools-v0_2_4".owner = "riinr";
  inputs."oaitools-v0_2_4".repo = "flake-nimble";
  inputs."oaitools-v0_2_4".ref = "flake-pinning";
  inputs."oaitools-v0_2_4".dir = "nimpkgs/o/oaitools/v0_2_4";
  inputs."oaitools-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oaitools-v0_2_5".type = "github";
  inputs."oaitools-v0_2_5".owner = "riinr";
  inputs."oaitools-v0_2_5".repo = "flake-nimble";
  inputs."oaitools-v0_2_5".ref = "flake-pinning";
  inputs."oaitools-v0_2_5".dir = "nimpkgs/o/oaitools/v0_2_5";
  inputs."oaitools-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}