{
  description = ''Micro benchmarking tool to measure speed of code, with the goal of optimizing it.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimbench-master".type = "github";
  inputs."nimbench-master".owner = "riinr";
  inputs."nimbench-master".repo = "flake-nimble";
  inputs."nimbench-master".ref = "flake-pinning";
  inputs."nimbench-master".dir = "nimpkgs/n/nimbench/master";
  inputs."nimbench-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbench-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbench-v0_1_1".type = "github";
  inputs."nimbench-v0_1_1".owner = "riinr";
  inputs."nimbench-v0_1_1".repo = "flake-nimble";
  inputs."nimbench-v0_1_1".ref = "flake-pinning";
  inputs."nimbench-v0_1_1".dir = "nimpkgs/n/nimbench/v0_1_1";
  inputs."nimbench-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbench-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbench-v0_2_0".type = "github";
  inputs."nimbench-v0_2_0".owner = "riinr";
  inputs."nimbench-v0_2_0".repo = "flake-nimble";
  inputs."nimbench-v0_2_0".ref = "flake-pinning";
  inputs."nimbench-v0_2_0".dir = "nimpkgs/n/nimbench/v0_2_0";
  inputs."nimbench-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbench-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbench-v0_2_1".type = "github";
  inputs."nimbench-v0_2_1".owner = "riinr";
  inputs."nimbench-v0_2_1".repo = "flake-nimble";
  inputs."nimbench-v0_2_1".ref = "flake-pinning";
  inputs."nimbench-v0_2_1".dir = "nimpkgs/n/nimbench/v0_2_1";
  inputs."nimbench-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbench-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}