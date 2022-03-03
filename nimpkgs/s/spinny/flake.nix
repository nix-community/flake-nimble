{
  description = ''Spinny is a tiny terminal spinner package for the Nim Programming Language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."spinny-master".type = "github";
  inputs."spinny-master".owner = "riinr";
  inputs."spinny-master".repo = "flake-nimble";
  inputs."spinny-master".ref = "flake-pinning";
  inputs."spinny-master".dir = "nimpkgs/s/spinny/master";
  inputs."spinny-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinny-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}