{
  description = ''Redis connection pool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."redpool-master".type = "github";
  inputs."redpool-master".owner = "riinr";
  inputs."redpool-master".repo = "flake-nimble";
  inputs."redpool-master".ref = "flake-pinning";
  inputs."redpool-master".dir = "nimpkgs/r/redpool/master";
  inputs."redpool-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redpool-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}