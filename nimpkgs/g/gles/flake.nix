{
  description = ''Bindings for OpenGL ES, the embedded 3D graphics library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gles-master".type = "github";
  inputs."gles-master".owner = "riinr";
  inputs."gles-master".repo = "flake-nimble";
  inputs."gles-master".ref = "flake-pinning";
  inputs."gles-master".dir = "nimpkgs/g/gles/master";
  inputs."gles-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gles-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}