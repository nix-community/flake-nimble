{
  description = ''Collection of string, parsing, pointer, ... utilities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."utils-master".type = "github";
  inputs."utils-master".owner = "riinr";
  inputs."utils-master".repo = "flake-nimble";
  inputs."utils-master".ref = "flake-pinning";
  inputs."utils-master".dir = "nimpkgs/u/utils/master";
  inputs."utils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."utils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}