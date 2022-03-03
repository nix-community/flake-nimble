{
  description = ''Chart plugin for wNim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wchart-master".type = "github";
  inputs."wchart-master".owner = "riinr";
  inputs."wchart-master".repo = "flake-nimble";
  inputs."wchart-master".ref = "flake-pinning";
  inputs."wchart-master".dir = "nimpkgs/w/wchart/master";
  inputs."wchart-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wchart-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}