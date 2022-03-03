{
  description = ''USA Code.Gov MultiSync API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."usagov-master".type = "github";
  inputs."usagov-master".owner = "riinr";
  inputs."usagov-master".repo = "flake-nimble";
  inputs."usagov-master".ref = "flake-pinning";
  inputs."usagov-master".dir = "nimpkgs/u/usagov/master";
  inputs."usagov-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."usagov-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}