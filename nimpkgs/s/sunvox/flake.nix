{
  description = ''Bindings for SunVox modular synthesizer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sunvox-master".type = "github";
  inputs."sunvox-master".owner = "riinr";
  inputs."sunvox-master".repo = "flake-nimble";
  inputs."sunvox-master".ref = "flake-pinning";
  inputs."sunvox-master".dir = "nimpkgs/s/sunvox/master";
  inputs."sunvox-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sunvox-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sunvox-0_0_1".type = "github";
  inputs."sunvox-0_0_1".owner = "riinr";
  inputs."sunvox-0_0_1".repo = "flake-nimble";
  inputs."sunvox-0_0_1".ref = "flake-pinning";
  inputs."sunvox-0_0_1".dir = "nimpkgs/s/sunvox/0_0_1";
  inputs."sunvox-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sunvox-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sunvox-0_1_1".type = "github";
  inputs."sunvox-0_1_1".owner = "riinr";
  inputs."sunvox-0_1_1".repo = "flake-nimble";
  inputs."sunvox-0_1_1".ref = "flake-pinning";
  inputs."sunvox-0_1_1".dir = "nimpkgs/s/sunvox/0_1_1";
  inputs."sunvox-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sunvox-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}