{
  description = ''A collection of easing curves for animation purposes.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."skEasing-master".type = "github";
  inputs."skEasing-master".owner = "riinr";
  inputs."skEasing-master".repo = "flake-nimble";
  inputs."skEasing-master".ref = "flake-pinning";
  inputs."skEasing-master".dir = "nimpkgs/s/skEasing/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}