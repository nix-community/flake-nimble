{
  description = ''Nim library for shared types'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."shared-master".type = "github";
  inputs."shared-master".owner = "riinr";
  inputs."shared-master".repo = "flake-nimble";
  inputs."shared-master".ref = "flake-pinning";
  inputs."shared-master".dir = "nimpkgs/s/shared/master";
  inputs."shared-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shared-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}