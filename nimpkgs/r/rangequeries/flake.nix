{
  description = ''An implementation of Range Queries in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rangequeries-master".type = "github";
  inputs."rangequeries-master".owner = "riinr";
  inputs."rangequeries-master".repo = "flake-nimble";
  inputs."rangequeries-master".ref = "flake-pinning";
  inputs."rangequeries-master".dir = "nimpkgs/r/rangequeries/master";
  inputs."rangequeries-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rangequeries-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}