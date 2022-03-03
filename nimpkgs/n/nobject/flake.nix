{
  description = ''A partially compile and runtime evaluated object, inspired from .net object'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nobject-main".type = "github";
  inputs."nobject-main".owner = "riinr";
  inputs."nobject-main".repo = "flake-nimble";
  inputs."nobject-main".ref = "flake-pinning";
  inputs."nobject-main".dir = "nimpkgs/n/nobject/main";
  inputs."nobject-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nobject-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}