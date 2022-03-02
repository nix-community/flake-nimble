{
  description = ''Interpolation routines for data and animation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."skinterpolate-master".type = "github";
  inputs."skinterpolate-master".owner = "riinr";
  inputs."skinterpolate-master".repo = "flake-nimble";
  inputs."skinterpolate-master".ref = "flake-pinning";
  inputs."skinterpolate-master".dir = "nimpkgs/s/skinterpolate/master";
  inputs."skinterpolate-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skinterpolate-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}