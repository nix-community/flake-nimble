{
  description = ''Unsplash API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."unsplash-master".type = "github";
  inputs."unsplash-master".owner = "riinr";
  inputs."unsplash-master".repo = "flake-nimble";
  inputs."unsplash-master".ref = "flake-pinning";
  inputs."unsplash-master".dir = "nimpkgs/u/unsplash/master";
  inputs."unsplash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unsplash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."unsplash-0_1_0".type = "github";
  inputs."unsplash-0_1_0".owner = "riinr";
  inputs."unsplash-0_1_0".repo = "flake-nimble";
  inputs."unsplash-0_1_0".ref = "flake-pinning";
  inputs."unsplash-0_1_0".dir = "nimpkgs/u/unsplash/0_1_0";
  inputs."unsplash-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unsplash-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}