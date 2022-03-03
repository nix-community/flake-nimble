{
  description = ''Nim bindings for libass.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ass-master".type = "github";
  inputs."ass-master".owner = "riinr";
  inputs."ass-master".repo = "flake-nimble";
  inputs."ass-master".ref = "flake-pinning";
  inputs."ass-master".dir = "nimpkgs/a/ass/master";
  inputs."ass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}