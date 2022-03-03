{
  description = ''Simple method of obtaining secure random numbers from the OS'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."urand-master".type = "github";
  inputs."urand-master".owner = "riinr";
  inputs."urand-master".repo = "flake-nimble";
  inputs."urand-master".ref = "flake-pinning";
  inputs."urand-master".dir = "nimpkgs/u/urand/master";
  inputs."urand-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urand-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}