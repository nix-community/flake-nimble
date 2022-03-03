{
  description = ''Predictable state container.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."redux-master".type = "github";
  inputs."redux-master".owner = "riinr";
  inputs."redux-master".repo = "flake-nimble";
  inputs."redux-master".ref = "flake-pinning";
  inputs."redux-master".dir = "nimpkgs/r/redux/master";
  inputs."redux-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}