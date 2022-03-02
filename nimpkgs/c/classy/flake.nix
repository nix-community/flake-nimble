{
  description = ''typeclasses for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."classy-master".type = "github";
  inputs."classy-master".owner = "riinr";
  inputs."classy-master".repo = "flake-nimble";
  inputs."classy-master".ref = "flake-pinning";
  inputs."classy-master".dir = "nimpkgs/c/classy/master";
  inputs."classy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classy-v0_0_1".type = "github";
  inputs."classy-v0_0_1".owner = "riinr";
  inputs."classy-v0_0_1".repo = "flake-nimble";
  inputs."classy-v0_0_1".ref = "flake-pinning";
  inputs."classy-v0_0_1".dir = "nimpkgs/c/classy/v0_0_1";
  inputs."classy-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classy-v0_0_2".type = "github";
  inputs."classy-v0_0_2".owner = "riinr";
  inputs."classy-v0_0_2".repo = "flake-nimble";
  inputs."classy-v0_0_2".ref = "flake-pinning";
  inputs."classy-v0_0_2".dir = "nimpkgs/c/classy/v0_0_2";
  inputs."classy-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classy-v0_0_3".type = "github";
  inputs."classy-v0_0_3".owner = "riinr";
  inputs."classy-v0_0_3".repo = "flake-nimble";
  inputs."classy-v0_0_3".ref = "flake-pinning";
  inputs."classy-v0_0_3".dir = "nimpkgs/c/classy/v0_0_3";
  inputs."classy-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classy-v0_0_4".type = "github";
  inputs."classy-v0_0_4".owner = "riinr";
  inputs."classy-v0_0_4".repo = "flake-nimble";
  inputs."classy-v0_0_4".ref = "flake-pinning";
  inputs."classy-v0_0_4".dir = "nimpkgs/c/classy/v0_0_4";
  inputs."classy-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}