{
  description = ''Bindings for the Oculus VR SDK.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."oculus-master".type = "github";
  inputs."oculus-master".owner = "riinr";
  inputs."oculus-master".repo = "flake-nimble";
  inputs."oculus-master".ref = "flake-pinning";
  inputs."oculus-master".dir = "nimpkgs/o/oculus/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}