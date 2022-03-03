{
  description = ''Nim bindings for p5.js.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimp5-master".type = "github";
  inputs."nimp5-master".owner = "riinr";
  inputs."nimp5-master".repo = "flake-nimble";
  inputs."nimp5-master".ref = "flake-pinning";
  inputs."nimp5-master".dir = "nimpkgs/n/nimp5/master";
  inputs."nimp5-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimp5-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}