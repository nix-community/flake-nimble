{
  description = ''nmi display animations aimed to correct users who accidentally enter nmi instead of nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nmi-master".type = "github";
  inputs."nmi-master".owner = "riinr";
  inputs."nmi-master".repo = "flake-nimble";
  inputs."nmi-master".ref = "flake-pinning";
  inputs."nmi-master".dir = "nimpkgs/n/nmi/master";
  inputs."nmi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nmi-v1_0_0".type = "github";
  inputs."nmi-v1_0_0".owner = "riinr";
  inputs."nmi-v1_0_0".repo = "flake-nimble";
  inputs."nmi-v1_0_0".ref = "flake-pinning";
  inputs."nmi-v1_0_0".dir = "nimpkgs/n/nmi/v1_0_0";
  inputs."nmi-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmi-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nmi-v1_0_1".type = "github";
  inputs."nmi-v1_0_1".owner = "riinr";
  inputs."nmi-v1_0_1".repo = "flake-nimble";
  inputs."nmi-v1_0_1".ref = "flake-pinning";
  inputs."nmi-v1_0_1".dir = "nimpkgs/n/nmi/v1_0_1";
  inputs."nmi-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmi-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nmi-v1_1_0".type = "github";
  inputs."nmi-v1_1_0".owner = "riinr";
  inputs."nmi-v1_1_0".repo = "flake-nimble";
  inputs."nmi-v1_1_0".ref = "flake-pinning";
  inputs."nmi-v1_1_0".dir = "nimpkgs/n/nmi/v1_1_0";
  inputs."nmi-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmi-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}