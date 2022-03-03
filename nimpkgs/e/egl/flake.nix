{
  description = ''Bindings for EGL, the native platform interface for rendering APIs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."egl-master".type = "github";
  inputs."egl-master".owner = "riinr";
  inputs."egl-master".repo = "flake-nimble";
  inputs."egl-master".ref = "flake-pinning";
  inputs."egl-master".dir = "nimpkgs/e/egl/master";
  inputs."egl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."egl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}