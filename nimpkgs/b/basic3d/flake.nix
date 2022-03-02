{
  description = ''Deprecated module for vector/matrices operations.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."basic3d-master".type = "github";
  inputs."basic3d-master".owner = "riinr";
  inputs."basic3d-master".repo = "flake-nimble";
  inputs."basic3d-master".ref = "flake-pinning";
  inputs."basic3d-master".dir = "nimpkgs/b/basic3d/master";
  inputs."basic3d-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."basic3d-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}