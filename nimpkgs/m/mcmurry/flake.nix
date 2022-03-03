{
  description = ''A module for generating lexer/parser.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mcmurry-master".type = "github";
  inputs."mcmurry-master".owner = "riinr";
  inputs."mcmurry-master".repo = "flake-nimble";
  inputs."mcmurry-master".ref = "flake-pinning";
  inputs."mcmurry-master".dir = "nimpkgs/m/mcmurry/master";
  inputs."mcmurry-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcmurry-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}