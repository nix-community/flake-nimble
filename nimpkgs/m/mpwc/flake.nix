{
  description = ''Master Password command line utility'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mpwc-master".type = "github";
  inputs."mpwc-master".owner = "riinr";
  inputs."mpwc-master".repo = "flake-nimble";
  inputs."mpwc-master".ref = "flake-pinning";
  inputs."mpwc-master".dir = "nimpkgs/m/mpwc/master";
  inputs."mpwc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpwc-v0_1_0".type = "github";
  inputs."mpwc-v0_1_0".owner = "riinr";
  inputs."mpwc-v0_1_0".repo = "flake-nimble";
  inputs."mpwc-v0_1_0".ref = "flake-pinning";
  inputs."mpwc-v0_1_0".dir = "nimpkgs/m/mpwc/v0_1_0";
  inputs."mpwc-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpwc-v0_1_1".type = "github";
  inputs."mpwc-v0_1_1".owner = "riinr";
  inputs."mpwc-v0_1_1".repo = "flake-nimble";
  inputs."mpwc-v0_1_1".ref = "flake-pinning";
  inputs."mpwc-v0_1_1".dir = "nimpkgs/m/mpwc/v0_1_1";
  inputs."mpwc-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpwc-v0_1_2".type = "github";
  inputs."mpwc-v0_1_2".owner = "riinr";
  inputs."mpwc-v0_1_2".repo = "flake-nimble";
  inputs."mpwc-v0_1_2".ref = "flake-pinning";
  inputs."mpwc-v0_1_2".dir = "nimpkgs/m/mpwc/v0_1_2";
  inputs."mpwc-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpwc-v0_1_3".type = "github";
  inputs."mpwc-v0_1_3".owner = "riinr";
  inputs."mpwc-v0_1_3".repo = "flake-nimble";
  inputs."mpwc-v0_1_3".ref = "flake-pinning";
  inputs."mpwc-v0_1_3".dir = "nimpkgs/m/mpwc/v0_1_3";
  inputs."mpwc-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}