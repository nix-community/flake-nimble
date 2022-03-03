{
  description = ''A random variable generating library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."randgen-master".type = "github";
  inputs."randgen-master".owner = "riinr";
  inputs."randgen-master".repo = "flake-nimble";
  inputs."randgen-master".ref = "flake-pinning";
  inputs."randgen-master".dir = "nimpkgs/r/randgen/master";
  inputs."randgen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."randgen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}