{
  description = ''Set implementation of disjoint intervals'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."intervalsets-master".type = "github";
  inputs."intervalsets-master".owner = "riinr";
  inputs."intervalsets-master".repo = "flake-nimble";
  inputs."intervalsets-master".ref = "flake-pinning";
  inputs."intervalsets-master".dir = "nimpkgs/i/intervalsets/master";
  inputs."intervalsets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."intervalsets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}