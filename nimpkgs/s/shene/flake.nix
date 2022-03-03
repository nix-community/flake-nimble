{
  description = ''Interface for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."shene-master".type = "github";
  inputs."shene-master".owner = "riinr";
  inputs."shene-master".repo = "flake-nimble";
  inputs."shene-master".ref = "flake-pinning";
  inputs."shene-master".dir = "nimpkgs/s/shene/master";
  inputs."shene-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shene-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}