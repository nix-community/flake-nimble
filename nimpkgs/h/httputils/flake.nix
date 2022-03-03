{
  description = ''Common utilities for implementing HTTP servers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."httputils-master".type = "github";
  inputs."httputils-master".owner = "riinr";
  inputs."httputils-master".repo = "flake-nimble";
  inputs."httputils-master".ref = "flake-pinning";
  inputs."httputils-master".dir = "nimpkgs/h/httputils/master";
  inputs."httputils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httputils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}