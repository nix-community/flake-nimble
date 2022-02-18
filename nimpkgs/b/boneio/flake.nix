{
  description = ''A low level GPIO library for the BeagleBone board family'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."boneio-master".type = "github";
  inputs."boneio-master".owner = "riinr";
  inputs."boneio-master".repo = "flake-nimble";
  inputs."boneio-master".ref = "flake-pinning";
  inputs."boneio-master".dir = "nimpkgs/b/boneio/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
