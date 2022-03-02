{
  description = ''Permuted Congruential Generator (PCG) Random Number Generation (RNG) for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pcgbasic-master".type = "github";
  inputs."pcgbasic-master".owner = "riinr";
  inputs."pcgbasic-master".repo = "flake-nimble";
  inputs."pcgbasic-master".ref = "flake-pinning";
  inputs."pcgbasic-master".dir = "nimpkgs/p/pcgbasic/master";
  inputs."pcgbasic-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pcgbasic-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}