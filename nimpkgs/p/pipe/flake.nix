{
  description = ''Pipe operator for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pipe-master".type = "github";
  inputs."pipe-master".owner = "riinr";
  inputs."pipe-master".repo = "flake-nimble";
  inputs."pipe-master".ref = "flake-pinning";
  inputs."pipe-master".dir = "nimpkgs/p/pipe/master";
  inputs."pipe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pipe-v0_1_0".type = "github";
  inputs."pipe-v0_1_0".owner = "riinr";
  inputs."pipe-v0_1_0".repo = "flake-nimble";
  inputs."pipe-v0_1_0".ref = "flake-pinning";
  inputs."pipe-v0_1_0".dir = "nimpkgs/p/pipe/v0_1_0";
  inputs."pipe-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipe-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pipe-v0_1_1".type = "github";
  inputs."pipe-v0_1_1".owner = "riinr";
  inputs."pipe-v0_1_1".repo = "flake-nimble";
  inputs."pipe-v0_1_1".ref = "flake-pinning";
  inputs."pipe-v0_1_1".dir = "nimpkgs/p/pipe/v0_1_1";
  inputs."pipe-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipe-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}