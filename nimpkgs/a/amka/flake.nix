{
  description = ''A validator for greek social security number (AMKA)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."amka-master".type = "github";
  inputs."amka-master".owner = "riinr";
  inputs."amka-master".repo = "flake-nimble";
  inputs."amka-master".ref = "flake-pinning";
  inputs."amka-master".dir = "nimpkgs/a/amka/master";
  inputs."amka-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amka-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}