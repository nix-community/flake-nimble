{
  description = ''A simple library for localizing Nim applications.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."locale-master".type = "github";
  inputs."locale-master".owner = "riinr";
  inputs."locale-master".repo = "flake-nimble";
  inputs."locale-master".ref = "flake-pinning";
  inputs."locale-master".dir = "nimpkgs/l/locale/master";
  inputs."locale-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."locale-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}