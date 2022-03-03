{
  description = ''User Agent parser for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."useragents-master".type = "github";
  inputs."useragents-master".owner = "riinr";
  inputs."useragents-master".repo = "flake-nimble";
  inputs."useragents-master".ref = "flake-pinning";
  inputs."useragents-master".dir = "nimpkgs/u/useragents/master";
  inputs."useragents-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useragents-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."useragents-0_1_1".type = "github";
  inputs."useragents-0_1_1".owner = "riinr";
  inputs."useragents-0_1_1".repo = "flake-nimble";
  inputs."useragents-0_1_1".ref = "flake-pinning";
  inputs."useragents-0_1_1".dir = "nimpkgs/u/useragents/0_1_1";
  inputs."useragents-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useragents-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."useragents-v0_1_1".type = "github";
  inputs."useragents-v0_1_1".owner = "riinr";
  inputs."useragents-v0_1_1".repo = "flake-nimble";
  inputs."useragents-v0_1_1".ref = "flake-pinning";
  inputs."useragents-v0_1_1".dir = "nimpkgs/u/useragents/v0_1_1";
  inputs."useragents-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useragents-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}