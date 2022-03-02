{
  description = ''Convert between RGB, YIQ, HLS, and HSV color systems.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."colorsys-master".type = "github";
  inputs."colorsys-master".owner = "riinr";
  inputs."colorsys-master".repo = "flake-nimble";
  inputs."colorsys-master".ref = "flake-pinning";
  inputs."colorsys-master".dir = "nimpkgs/c/colorsys/master";
  inputs."colorsys-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorsys-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}