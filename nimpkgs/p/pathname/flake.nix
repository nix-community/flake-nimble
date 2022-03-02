{
  description = ''Library to support work with pathnames in Windows and Posix-based systems. Inspired by Rubies pathname.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pathname-master".type = "github";
  inputs."pathname-master".owner = "riinr";
  inputs."pathname-master".repo = "flake-nimble";
  inputs."pathname-master".ref = "flake-pinning";
  inputs."pathname-master".dir = "nimpkgs/p/pathname/master";
  inputs."pathname-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pathname-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pathname-v0_1_0".type = "github";
  inputs."pathname-v0_1_0".owner = "riinr";
  inputs."pathname-v0_1_0".repo = "flake-nimble";
  inputs."pathname-v0_1_0".ref = "flake-pinning";
  inputs."pathname-v0_1_0".dir = "nimpkgs/p/pathname/v0_1_0";
  inputs."pathname-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pathname-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}