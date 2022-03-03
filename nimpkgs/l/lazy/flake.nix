{
  description = ''Iterator library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."lazy-master".type = "github";
  inputs."lazy-master".owner = "riinr";
  inputs."lazy-master".repo = "flake-nimble";
  inputs."lazy-master".ref = "flake-pinning";
  inputs."lazy-master".dir = "nimpkgs/l/lazy/master";
  inputs."lazy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lazy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}