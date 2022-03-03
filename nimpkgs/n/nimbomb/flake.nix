{
  description = ''A GiantBomb-wiki wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimbomb-master".type = "github";
  inputs."nimbomb-master".owner = "riinr";
  inputs."nimbomb-master".repo = "flake-nimble";
  inputs."nimbomb-master".ref = "flake-pinning";
  inputs."nimbomb-master".dir = "nimpkgs/n/nimbomb/master";
  inputs."nimbomb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbomb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbomb-v0_1_0".type = "github";
  inputs."nimbomb-v0_1_0".owner = "riinr";
  inputs."nimbomb-v0_1_0".repo = "flake-nimble";
  inputs."nimbomb-v0_1_0".ref = "flake-pinning";
  inputs."nimbomb-v0_1_0".dir = "nimpkgs/n/nimbomb/v0_1_0";
  inputs."nimbomb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbomb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}