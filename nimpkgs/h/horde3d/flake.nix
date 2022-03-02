{
  description = ''Wrapper for Horde3D, a small open source 3D rendering engine.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."horde3d-master".type = "github";
  inputs."horde3d-master".owner = "riinr";
  inputs."horde3d-master".repo = "flake-nimble";
  inputs."horde3d-master".ref = "flake-pinning";
  inputs."horde3d-master".dir = "nimpkgs/h/horde3d/master";
  inputs."horde3d-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."horde3d-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}