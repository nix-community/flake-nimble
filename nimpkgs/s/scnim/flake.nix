{
  description = ''Develop SuperCollider UGens in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."scnim-master".type = "github";
  inputs."scnim-master".owner = "riinr";
  inputs."scnim-master".repo = "flake-nimble";
  inputs."scnim-master".ref = "flake-pinning";
  inputs."scnim-master".dir = "nimpkgs/s/scnim/master";
  inputs."scnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."scnim-0_0_1".type = "github";
  inputs."scnim-0_0_1".owner = "riinr";
  inputs."scnim-0_0_1".repo = "flake-nimble";
  inputs."scnim-0_0_1".ref = "flake-pinning";
  inputs."scnim-0_0_1".dir = "nimpkgs/s/scnim/0_0_1";
  inputs."scnim-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scnim-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}