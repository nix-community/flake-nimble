{
  description = ''Generalized linear models in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."linear_models-master".type = "github";
  inputs."linear_models-master".owner = "riinr";
  inputs."linear_models-master".repo = "flake-nimble";
  inputs."linear_models-master".ref = "flake-pinning";
  inputs."linear_models-master".dir = "nimpkgs/l/linear_models/master";
  inputs."linear_models-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linear_models-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}