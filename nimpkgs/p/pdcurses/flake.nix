{
  description = ''Nim wrapper for PDCurses'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pdcurses-master".type = "github";
  inputs."pdcurses-master".owner = "riinr";
  inputs."pdcurses-master".repo = "flake-nimble";
  inputs."pdcurses-master".ref = "flake-pinning";
  inputs."pdcurses-master".dir = "nimpkgs/p/pdcurses/master";
  inputs."pdcurses-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdcurses-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}