{
  description = ''Bytes utils for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bio-master".type = "github";
  inputs."bio-master".owner = "riinr";
  inputs."bio-master".repo = "flake-nimble";
  inputs."bio-master".ref = "flake-pinning";
  inputs."bio-master".dir = "nimpkgs/b/bio/master";
  inputs."bio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bio-v0_1_0".type = "github";
  inputs."bio-v0_1_0".owner = "riinr";
  inputs."bio-v0_1_0".repo = "flake-nimble";
  inputs."bio-v0_1_0".ref = "flake-pinning";
  inputs."bio-v0_1_0".dir = "nimpkgs/b/bio/v0_1_0";
  inputs."bio-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}