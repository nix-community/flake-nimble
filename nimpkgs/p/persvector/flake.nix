{
  description = ''This is an implementation of Clojures persistent vectors in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."persvector-master".type = "github";
  inputs."persvector-master".owner = "riinr";
  inputs."persvector-master".repo = "flake-nimble";
  inputs."persvector-master".ref = "flake-pinning";
  inputs."persvector-master".dir = "nimpkgs/p/persvector/master";
  inputs."persvector-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persvector-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."persvector-v1_0_0".type = "github";
  inputs."persvector-v1_0_0".owner = "riinr";
  inputs."persvector-v1_0_0".repo = "flake-nimble";
  inputs."persvector-v1_0_0".ref = "flake-pinning";
  inputs."persvector-v1_0_0".dir = "nimpkgs/p/persvector/v1_0_0";
  inputs."persvector-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persvector-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}