{
  description = ''gameoflife is library for Game of Life.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gameoflife-master".type = "github";
  inputs."gameoflife-master".owner = "riinr";
  inputs."gameoflife-master".repo = "flake-nimble";
  inputs."gameoflife-master".ref = "flake-pinning";
  inputs."gameoflife-master".dir = "nimpkgs/g/gameoflife/master";
  inputs."gameoflife-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gameoflife-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}