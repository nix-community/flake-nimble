{
  description = ''Deprecated module for vector/matrices operations.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."basic2d-master".type = "github";
  inputs."basic2d-master".owner = "riinr";
  inputs."basic2d-master".repo = "flake-nimble";
  inputs."basic2d-master".ref = "flake-pinning";
  inputs."basic2d-master".dir = "nimpkgs/b/basic2d/master";
  inputs."basic2d-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."basic2d-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}