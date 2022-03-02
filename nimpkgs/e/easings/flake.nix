{
  description = ''Robert Penner Easing Functions for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."easings-master".type = "github";
  inputs."easings-master".owner = "riinr";
  inputs."easings-master".repo = "flake-nimble";
  inputs."easings-master".ref = "flake-pinning";
  inputs."easings-master".dir = "nimpkgs/e/easings/master";
  inputs."easings-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easings-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}