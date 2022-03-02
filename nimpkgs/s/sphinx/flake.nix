{
  description = ''Sphinx wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sphinx-master".type = "github";
  inputs."sphinx-master".owner = "riinr";
  inputs."sphinx-master".repo = "flake-nimble";
  inputs."sphinx-master".ref = "flake-pinning";
  inputs."sphinx-master".dir = "nimpkgs/s/sphinx/master";
  inputs."sphinx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sphinx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}