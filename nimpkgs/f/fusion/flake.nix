{
  description = ''Nim's official stdlib extension'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fusion-master".type = "github";
  inputs."fusion-master".owner = "riinr";
  inputs."fusion-master".repo = "flake-nimble";
  inputs."fusion-master".ref = "flake-pinning";
  inputs."fusion-master".dir = "nimpkgs/f/fusion/master";
  inputs."fusion-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fusion-v1_0".type = "github";
  inputs."fusion-v1_0".owner = "riinr";
  inputs."fusion-v1_0".repo = "flake-nimble";
  inputs."fusion-v1_0".ref = "flake-pinning";
  inputs."fusion-v1_0".dir = "nimpkgs/f/fusion/v1_0";
  inputs."fusion-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fusion-v1_1".type = "github";
  inputs."fusion-v1_1".owner = "riinr";
  inputs."fusion-v1_1".repo = "flake-nimble";
  inputs."fusion-v1_1".ref = "flake-pinning";
  inputs."fusion-v1_1".dir = "nimpkgs/f/fusion/v1_1";
  inputs."fusion-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}