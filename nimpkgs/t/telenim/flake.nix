{
  description = ''A high-level async TDLib wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."telenim-master".type = "github";
  inputs."telenim-master".owner = "riinr";
  inputs."telenim-master".repo = "flake-nimble";
  inputs."telenim-master".ref = "flake-pinning";
  inputs."telenim-master".dir = "nimpkgs/t/telenim/master";
  inputs."telenim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telenim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}