{
  description = ''A collection of easing curves for animation purposes.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."skeasing-master".type = "github";
  inputs."skeasing-master".owner = "riinr";
  inputs."skeasing-master".repo = "flake-nimble";
  inputs."skeasing-master".ref = "flake-pinning";
  inputs."skeasing-master".dir = "nimpkgs/s/skeasing/master";
  inputs."skeasing-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skeasing-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}