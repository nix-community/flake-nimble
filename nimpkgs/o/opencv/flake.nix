{
  description = ''OpenCV wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."opencv-master".type = "github";
  inputs."opencv-master".owner = "riinr";
  inputs."opencv-master".repo = "flake-nimble";
  inputs."opencv-master".ref = "flake-pinning";
  inputs."opencv-master".dir = "nimpkgs/o/opencv/master";
  inputs."opencv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}