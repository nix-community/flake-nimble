{
  description = ''A bunch of macros. sugar if you would'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimspice-master".type = "github";
  inputs."nimspice-master".owner = "riinr";
  inputs."nimspice-master".repo = "flake-nimble";
  inputs."nimspice-master".ref = "flake-pinning";
  inputs."nimspice-master".dir = "nimpkgs/n/nimspice/master";
  inputs."nimspice-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimspice-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimspice-v0_1_0".type = "github";
  inputs."nimspice-v0_1_0".owner = "riinr";
  inputs."nimspice-v0_1_0".repo = "flake-nimble";
  inputs."nimspice-v0_1_0".ref = "flake-pinning";
  inputs."nimspice-v0_1_0".dir = "nimpkgs/n/nimspice/v0_1_0";
  inputs."nimspice-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimspice-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimspice-v0_1_2".type = "github";
  inputs."nimspice-v0_1_2".owner = "riinr";
  inputs."nimspice-v0_1_2".repo = "flake-nimble";
  inputs."nimspice-v0_1_2".ref = "flake-pinning";
  inputs."nimspice-v0_1_2".dir = "nimpkgs/n/nimspice/v0_1_2";
  inputs."nimspice-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimspice-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}