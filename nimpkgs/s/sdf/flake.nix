{
  description = ''Signed Distance Field builder for contour texturing in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sdf-master".type = "github";
  inputs."sdf-master".owner = "riinr";
  inputs."sdf-master".repo = "flake-nimble";
  inputs."sdf-master".ref = "flake-pinning";
  inputs."sdf-master".dir = "nimpkgs/s/sdf/master";
  inputs."sdf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}