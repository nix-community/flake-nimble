{
  description = ''Sitmo parallel random number generator in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sitmo-master".type = "github";
  inputs."sitmo-master".owner = "riinr";
  inputs."sitmo-master".repo = "flake-nimble";
  inputs."sitmo-master".ref = "flake-pinning";
  inputs."sitmo-master".dir = "nimpkgs/s/sitmo/master";
  inputs."sitmo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sitmo-v0_0_0".type = "github";
  inputs."sitmo-v0_0_0".owner = "riinr";
  inputs."sitmo-v0_0_0".repo = "flake-nimble";
  inputs."sitmo-v0_0_0".ref = "flake-pinning";
  inputs."sitmo-v0_0_0".dir = "nimpkgs/s/sitmo/v0_0_0";
  inputs."sitmo-v0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-v0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sitmo-v0_0_1".type = "github";
  inputs."sitmo-v0_0_1".owner = "riinr";
  inputs."sitmo-v0_0_1".repo = "flake-nimble";
  inputs."sitmo-v0_0_1".ref = "flake-pinning";
  inputs."sitmo-v0_0_1".dir = "nimpkgs/s/sitmo/v0_0_1";
  inputs."sitmo-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sitmo-v0_0_2".type = "github";
  inputs."sitmo-v0_0_2".owner = "riinr";
  inputs."sitmo-v0_0_2".repo = "flake-nimble";
  inputs."sitmo-v0_0_2".ref = "flake-pinning";
  inputs."sitmo-v0_0_2".dir = "nimpkgs/s/sitmo/v0_0_2";
  inputs."sitmo-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}