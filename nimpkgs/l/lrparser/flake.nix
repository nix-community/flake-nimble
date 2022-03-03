{
  description = ''A SLR parser written in Nim with compile-time and run-time grammar generation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."lrparser-master".type = "github";
  inputs."lrparser-master".owner = "riinr";
  inputs."lrparser-master".repo = "flake-nimble";
  inputs."lrparser-master".ref = "flake-pinning";
  inputs."lrparser-master".dir = "nimpkgs/l/lrparser/master";
  inputs."lrparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}