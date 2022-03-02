{
  description = ''Astronomical library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."astronimy-master".type = "github";
  inputs."astronimy-master".owner = "riinr";
  inputs."astronimy-master".repo = "flake-nimble";
  inputs."astronimy-master".ref = "flake-pinning";
  inputs."astronimy-master".dir = "nimpkgs/a/astronimy/master";
  inputs."astronimy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astronimy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}