{
  description = ''Nim bindings for libOVR (Oculus Rift)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libovr-master".type = "github";
  inputs."libovr-master".owner = "riinr";
  inputs."libovr-master".repo = "flake-nimble";
  inputs."libovr-master".ref = "flake-pinning";
  inputs."libovr-master".dir = "nimpkgs/l/libovr/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}