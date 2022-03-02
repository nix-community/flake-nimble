{
  description = ''This module is a port of the Java implementation of the Zhang-Shasha algorithm for tree edit distance'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."zhsh-master".type = "github";
  inputs."zhsh-master".owner = "riinr";
  inputs."zhsh-master".repo = "flake-nimble";
  inputs."zhsh-master".ref = "flake-pinning";
  inputs."zhsh-master".dir = "nimpkgs/z/zhsh/master";
  inputs."zhsh-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zhsh-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zhsh-v0_2_0".type = "github";
  inputs."zhsh-v0_2_0".owner = "riinr";
  inputs."zhsh-v0_2_0".repo = "flake-nimble";
  inputs."zhsh-v0_2_0".ref = "flake-pinning";
  inputs."zhsh-v0_2_0".dir = "nimpkgs/z/zhsh/v0_2_0";
  inputs."zhsh-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zhsh-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}