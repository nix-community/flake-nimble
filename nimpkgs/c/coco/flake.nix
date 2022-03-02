{
  description = ''Code coverage CLI + library for Nim using LCOV'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."coco-master".type = "github";
  inputs."coco-master".owner = "riinr";
  inputs."coco-master".repo = "flake-nimble";
  inputs."coco-master".ref = "flake-pinning";
  inputs."coco-master".dir = "nimpkgs/c/coco/master";
  inputs."coco-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coco-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}