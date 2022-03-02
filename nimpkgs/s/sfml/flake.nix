{
  description = ''High level OpenGL-based Game Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sfml-master".type = "github";
  inputs."sfml-master".owner = "riinr";
  inputs."sfml-master".repo = "flake-nimble";
  inputs."sfml-master".ref = "flake-pinning";
  inputs."sfml-master".dir = "nimpkgs/s/sfml/master";
  inputs."sfml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sfml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}